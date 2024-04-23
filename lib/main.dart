import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: InnerShadow(
           shadows: [
             Shadow(
               color: Colors.black.withOpacity(0.4),
               offset: const Offset(16, 16),
               blurRadius: 16,
             ),
             Shadow(
               color: Colors.black.withOpacity(0.4),
               offset: const Offset(-16, -16),
               blurRadius: 16,
             ),
           ],
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Inner Shadow',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
