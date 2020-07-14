import 'package:flutter/material.dart';
import 'package:uidesign01/screens/SearchBarPage.dart';
import 'package:uidesign01/screens/SnackBarPage.dart';
import 'package:uidesign01/screens/SnackBarTabViewPage.dart';
import 'package:uidesign01/screens/SplashScreenPage.dart';
import 'screens/CarouselSliderPage.dart';
import 'screens/DocApprovePage.dart';
import 'screens/DocNewFormPage.dart';

void main() {
  runApp(MyApp());
}

//==========================================================================
// MY APP
//==========================================================================      
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//==========================================================================
// SHOW DEBUG
//==========================================================================      
        debugShowCheckedModeBanner: false, 
      title: 'UI Design and Lessson',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'UI Design and Lessson'),
    );
  }
}

//==========================================================================
// MAIN CLASS
//==========================================================================      
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================      
class _MyHomePageState extends State<MyHomePage> {
//==========================================================================
// DECLARE VARIABLE
//==========================================================================        
  // int _counter = 0;

//==========================================================================
// BUILD WIDGET
//==========================================================================      
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
//==========================================================================
// APP BAR
//==========================================================================      
        title: Text(widget.title),
      ),
      body: Center(
//==========================================================================
// LIST VIEW
//==========================================================================      .
        child: ListView(
          children: <Widget>[
//==========================================================================
// BOTTON
//==========================================================================    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SnackBarTabViewPage()),);}, child: Text('Snackbar and tab view, 14 July 2020'),),   
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SnackBarPage()),);}, child: Text('Snackbar, 14 July 2020'),),   
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreenPage()),);}, child: Text('Splash Screen, 12 July 2020'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBarPage()),);}, child: Text('Search Bar Page, 12 July 2020'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CarouselSliderPage()),);}, child: Text('Carousel Image Slider / routing, 12 July 2020'),), 
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ImageSliderPage()),);}, child: Text('Image Slider Page, 12 July 2020'),),    
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DocNewFormPage()),);}, child: Text('New Form Page, 8 July 2020'),),               
            RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DocApprovePage()),);}, child: Text('Approve Document, 7 July 2020'),),    
          ],
        ),
      ),
    );
  }
}
