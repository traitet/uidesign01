
//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:uidesign01/main.dart';


//==========================================================================
// MAIN CLASS
//==========================================================================
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => new _SplashScreenPageState();
}


//==========================================================================
// STATE CLASS
//==========================================================================
class _SplashScreenPageState extends State<SplashScreenPage> {

//==========================================================================
// BUILD WIDGET
//==========================================================================
  @override
  Widget build(BuildContext context) {
    return SplashScreen(

//==========================================================================
// NO OF SECOND
//==========================================================================      
      seconds: 2,
      navigateAfterSeconds: new MyHomePage(title: 'UI Design and Lessson'),
      title: Text('Welcome In SplashScreen',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
      image: Image.network('https://flutter.io/images/catalog-widget-placeholder.png'),
      //backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("UI Design Print"),
      loaderColor: Colors.red,
    );
  }
}

