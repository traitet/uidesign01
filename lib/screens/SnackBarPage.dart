//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';

//============================================================================
// MAIN CLASS
//============================================================================  
class SnackBarPage extends StatefulWidget {
  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

//============================================================================
// STATE
//============================================================================  
class _SnackBarPageState extends State<SnackBarPage> {
//============================================================================
// GLOBAL KEY (SCAFFOLD FOR SNACKBAR)
//============================================================================  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();    
//============================================================================
// BUILD WIDGET
//============================================================================    
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
//============================================================================
// MATERIAL APP
//============================================================================    
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text('Snackbar'),
        ),
        body: ListView(
          children: <Widget>[
            RaisedButton(onPressed: (){showSnackBar();}, child: Text('Home Page'),), 
                      ],
                    ),
                  )
                  
                );
              }
//============================================================================
// FUNCTION: SNOWSNACKBAR
//============================================================================                
  showSnackBar() {scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}              
}
            
