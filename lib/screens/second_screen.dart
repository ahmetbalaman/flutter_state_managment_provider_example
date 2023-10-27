import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_1/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(builder: (context, value, child) {
            return Center(child: Text(value.number.toString()));
          },),
          OutlinedButton(onPressed: () => Provider.of<CounterProvider>(context,listen: false).increaseNumber(), 
          child: Text("+1 Increase Number")),

          
        ],
      ));
  }
}