import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      drawer: Drawer(),
      body: Center(
        child: Text('home page', style: Theme.of(context).textTheme.bodyMedium,),
      ),
    );
  }
}