import 'package:crud_frontend/post.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CrudOperations(),
      routes: {
        'home': (context) => const CrudOperations(),
        'post': (context) => const POST(),
      },
    );
  }
}

class CrudOperations extends StatelessWidget {
  const CrudOperations({super.key});

  @override
  // Builds the main UI widget for CRUD operations.
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'post');
              },
              child: const Text('POST'),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('GET')),
            ElevatedButton(onPressed: () {}, child: const Text('UPDATE')),
            ElevatedButton(onPressed: () {}, child: const Text('DELETE')),
          ],
        ),
      ),
    );
  }
}
