//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//==========================================================================
// MAIN CLASS
//==========================================================================
class SnackBarTabView0Page extends StatefulWidget {
  @override
  _SnackBarTabView0PageState createState() => _SnackBarTabView0PageState();
}

class _SnackBarTabView0PageState extends State<SnackBarTabView0Page> {
//============================================================================
// GLOBAL KEY (SCAFFOLD FOR SNACKBAR)
//============================================================================  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();           

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
        key: scaffoldKey,      
      body: 
        ListView(children: <Widget>[
          Text('Test#1'),
          RaisedButton(onPressed: (){showSnackBar();},child: Text('Show Snackbar')),
       
          
    ],
      
      
    )
    );
    

  }
//============================================================================
// FUNCTION: SHOW BOTTMSHEET
//============================================================================                
  showSnackBar() {scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}   

  
  //.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}   

}