//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign01/services/ShowNotiService.dart';


//==========================================================================
// MAIN CLASS
//==========================================================================
class SnackBarTabView1Page extends StatefulWidget {
  @override
  _SnackBarTabView1PageState createState() => _SnackBarTabView1PageState();
}

class _SnackBarTabView1PageState extends State<SnackBarTabView1Page> {
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
          //RaisedButton(onPressed: (){showMessageBox(context, "success", "Register completely", actions: [dismissButton(context)]);   },child: Text('Show Snackbar')),
          RaisedButton(onPressed: (){showSnackBar();},child: Text('Show Snackbar')),
          
    ],
      
      
    )
    );
    

  }
//============================================================================
// FUNCTION: SNOWSNACKBAR
//============================================================================                
  showSnackBar() {scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}   


}