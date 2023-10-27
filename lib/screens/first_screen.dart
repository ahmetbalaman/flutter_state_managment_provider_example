import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_1/providers/counter_provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(Provider.of<CounterProvider>(context).number.toString())),
          OutlinedButton(onPressed: () => Provider.of<CounterProvider>(context,listen: false).increaseNumber(), 
          child: Text("+1 Increase Number")),

            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, "/second");
          }, child: Text("Go to second"))
        ],
      ),
    );
  }
}