import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  addCount() {
    setState(() {
      _count = _count + 1;
      print(_count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: Center(
        child: Text(
          "Total Count = $_count",
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCount,
        child: const Icon(
          IconData(0xe047, fontFamily: 'MaterialIcons'),
          color: Color(0xFF000000),
        ),
      ),
    );
  }
}
