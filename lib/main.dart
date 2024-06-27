import 'counter/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
        child: const CounterPage(),
        builder: (context, mode, child) {
          return MaterialApp(
            title: 'Counter wear',
            theme: ThemeData(
                visualDensity: VisualDensity.compact,
                colorScheme: mode == WearMode.active
                    ? const ColorScheme.dark(
                        primary: Color.fromARGB(255, 45, 160, 205),
                      )
                    : const ColorScheme.dark(
                        primary: Colors.white24,
                        onBackground: Colors.white10,
                        onSurface: Colors.white10,
                      )),
            home: child,
          );
        });
  }
}
