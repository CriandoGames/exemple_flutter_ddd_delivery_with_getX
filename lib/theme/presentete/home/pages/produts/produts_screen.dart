import 'package:flutter/material.dart';

class ProdutsScreen extends StatelessWidget {
  const ProdutsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produts'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 0,
      ), itemBuilder: (_,index){
        return Card(
          child: Text('Product $index'),
        );
      }),
    );
  }
}
