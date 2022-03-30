import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      drawer: const CustomAppBar(),
      body: const Center(
        child: Text('Kloehz'),
      ),
    );
  }
}