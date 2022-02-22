

import 'package:flutter/material.dart';
import 'package:rote/pages/Pages.dart';
import 'package:rote/pages/Thired%20page.dart';
import 'package:rote/pages/second%20page.dart';

class RouteManager{


  static const String homepahe ='/';
  static const String seconpahe ='/vanakam gopal second page ';
  static const String thirdpahe ='/vanakam gopal third page ';

  static Route<dynamic> generateRoute(RouteSettings settings){
   var value;

    value = (settings.arguments != null)? value = settings.arguments as Map<String,dynamic>:null;

   // if (settings.arguments != null){
   //   value = settings.arguments as Map<String,dynamic>;
   // }
    switch(settings.name){
      case homepahe:
        return MaterialPageRoute(builder: (context)=>MainPage(),);

      case seconpahe :
        return MaterialPageRoute(builder: (context)=>SecondPage( ));
        
      case thirdpahe:
        return MaterialPageRoute(builder: (context)=>Thirdpage(value:value["name"]));

      default:
        throw const FormatException('route page not found');

    }

  }
}