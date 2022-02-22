
import 'package:flutter/material.dart';
import 'package:rote/routes/routespage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: Text('Second pagee '),),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
            onPressed: () {
      Navigator.of(context).pushNamed(RouteManager.homepahe);
      },
        child: Text("mainpage "),
      ),])));
  }
}
