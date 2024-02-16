import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Tab bar Demo',
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(
              tabs: [
                Row(children: [
                  Icon(Icons.directions_car, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Car",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                Row(children: [
                  Icon(Icons.directions_transit, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Transit",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                Row(children: [
                  Icon(Icons.directions_bike, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Bike",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                Row(children: [
                  Icon(Icons.directions_boat, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Boat",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                Row(children: [
                  Icon(Icons.directions_railway, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Railway",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
                Row(children: [
                  Icon(Icons.directions_bus, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "Bus",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
              ],
              isScrollable: true,
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.teal.shade100,
                child: const Center(
                  child: Text('Car'),
                ),
              ),
              Container(
                color: Colors.teal.shade200,
                child: const Center(
                  child: Text('Train'),
                ),
              ),
              Container(
                color: Colors.teal.shade300,
                child: const Center(
                  child: Text('Bike'),
                ),
              ),
              Container(
                color: Colors.amber.shade300,
                child: const Center(
                  child: Text('Boat'),
                ),
              ),
              Container(
                color: Colors.lime.shade300,
                child: const Center(
                  child: Text('Railway'),
                ),
              ),
              Container(
                color: Colors.blue.shade300,
                child: const Center(
                  child: Text('Bus'),
                ),
              ),
            ],
          )),
    );
  }
}
