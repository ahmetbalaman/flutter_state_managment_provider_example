import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_1/providers/counter_provider.dart';
import 'package:provider_example_1/screens/first_screen.dart';
import 'package:provider_example_1/screens/second_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => CounterProvider(),)
  ],
  child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => FirstScreen(),
          "/second":(context) => SecondScreen()
      },

    );
  }
}