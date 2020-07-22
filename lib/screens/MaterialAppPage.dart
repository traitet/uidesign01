
//=======================================================
// IMPORT
//=======================================================
import 'package:flutter/material.dart';


//=======================================================
// STF: STATEFULL WIDGET
//=======================================================
class MaterialAppPage extends StatefulWidget {
  @override
  _MaterialAppPageState createState() => _MaterialAppPageState();
}

class _MaterialAppPageState extends State<MaterialAppPage> {
  @override
  Widget build(BuildContext context) {

//=======================================================
// MATERIAL APP
//=======================================================    
    return MaterialApp(
//=======================================================
// OFF DEBUG LOGO
//=======================================================       
      debugShowCheckedModeBanner: false,
//=======================================================
// COPY COLOR FROM MAIN.DART
//=======================================================       
      theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
//=======================================================
// SCAFFOLD
//=======================================================       
      home: Scaffold(
//=======================================================
// APP BAR
//=======================================================           
        appBar: AppBar(title: Text('Test'),
//=======================================================
// LEADING
//=======================================================   
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        ),
        body: Container(),
      ),
      
    );
  }
}