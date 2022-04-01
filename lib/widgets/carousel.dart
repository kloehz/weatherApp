import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 200
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          WeatherDay(),
          WeatherDay(),
          WeatherDay(),
          WeatherDay(),
          WeatherDay(),
          WeatherDay(),
          WeatherDay(),
          WeatherDay(),
        ],
      ),
    );
  }
}

class WeatherDay extends StatelessWidget {
  const WeatherDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 146, 221, 255),
                    blurRadius: 15,
                    blurStyle: BlurStyle.outer
                  )
                ]
              ),
              child: Text('50', style: TextStyle(fontSize: 32, color: Colors.grey, fontWeight: FontWeight.w600),),
            ),
          ),
          Positioned(
            top: -20,
            child: Image.network(
              'https://openweathermap.org/img/w/02n.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover
            )
          ),
        ]
      ),
    );
  }
}