import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_appbar.dart';
import 'package:weather_app/widgets/semi_circle.dart';

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
      body: const SemiCircle(
        children: HomeContent()
      )
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            'Pergamino',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700]
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Text(
              'Soleado y mas texto xD',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[500]
              ),
            ),
          ),
          const SizedBox(height: 40),
          Image.asset(
                'assets/weather_icons/cloudy.png',
                width: 200,
                height: 200
          ),
        ],
      ),
    );
  }
}