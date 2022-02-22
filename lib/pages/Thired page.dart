import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  final String value;
  const Thirdpage({Key? key, required this.value}) : super(key: key);

  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  TextEditingController con =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('third pagee '),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text( "name was ${widget.value}"),
          SizedBox(height: 30,),
            TextField(
              controller: con,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
            ),),
            SizedBox(height: 30,),

          ElevatedButton(onPressed: (){
            var col = con;
            Navigator.pop(context,col.text);
          }, child: Text("mainpage"))],
        ),
      ),
    );
  }
}
