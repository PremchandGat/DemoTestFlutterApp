import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool like = false;
  int _count = 0;
  addCount() {
    setState(() {
      if (like) {
        like = false;
      } else {
        like = true;
      }
      _count = _count + 1;
      print(_count);
    });
  }

  likeWidget() {
    if (like) {
      return Icon(Icons.favorite);
    } else {
      return Image.network(
          "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: likeWidget(),
        title: const Text("Welcome"),
      ),
      body: Center(
        child: Text(
          "Total Count = $_count",
          style: const TextStyle(fontSize: 32, color: Colors.red),
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
