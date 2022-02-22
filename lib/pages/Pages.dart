import 'package:flutter/material.dart';
import 'package:rote/routes/routespage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Map ={"name":"soundar"};
  dynamic cova="no data camme";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main pagee '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.seconpahe);
              },
              child: Text('second'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                var cco= await  Navigator.of(context).pushNamed(RouteManager.thirdpahe,arguments: Map);

                setState(() {
                  cova=cco;
                });
                },
                child: Text('third')),
            SizedBox(
              height: 20,
            ),
            Text(cova)
          ],
        ),
      ),
    );
  }
}
