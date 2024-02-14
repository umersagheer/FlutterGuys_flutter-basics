import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _displayBottomSheet(context);
          },
          height: 50,
          minWidth: 200,
          color: Colors.blue.shade700,
          child: const Text(
            'OPEN',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.blue.shade400,
        barrierColor: Colors.black38.withOpacity(0.4),
        isDismissible: true,
        builder: (context) => const SizedBox(
              height: 200,
              child: Center(
                  child: Text(
                "What You Want? \n Close me 😑",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              )),
            ));
  }
}
