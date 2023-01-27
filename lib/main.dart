import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runZonedGuarded(() {
    runApp(const MyApp());
  }, (error, stack) {
    debugPrint(error.toString());
    debugPrintStack(stackTrace: stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ff = FirebaseFirestore.instance;
  bool loading = false;
  String? res;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Builder(builder: (context) {
        if (loading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  try {
                    setState(() {
                      res = null;
                      loading = true;
                    });
                    final documentSnapshot = await ff.doc('/movies/1').get();
                    final query = ff
                        .collection('movies')
                        .where('ref', isNull: false)
                        .orderBy('ref')
                        .limit(10)
                        .startAfterDocument(documentSnapshot);
                    final snaps = await query.snapshots().first;
                    res = 'Received ${snaps.docs.length} documents.';
                  } catch (e, s) {
                    res = 'e: $e\ns: $s';
                  } finally {
                    setState(() {
                      loading = false;
                    });
                  }
                },
                child: const Text('Run'),
              ),
              if (res != null) Text('Response $res'),
            ],
          ),
        );
      }),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
