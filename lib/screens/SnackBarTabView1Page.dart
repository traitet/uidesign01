//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
          RaisedButton(onPressed: (){showSnackBar();},child: Text('Show Snackbar')),
          RaisedButton(onPressed: (){showBottomSheet();},child: Text('Show Bottom Sheet')),          
          
    ],
      
      
    )
    );
    

  }
//============================================================================
// FUNCTION: SHOW BOTTMSHEET
//============================================================================                
  showSnackBar() {scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}   
  showBottomSheet() {scaffoldKey.currentState.showBottomSheet(
            (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('BottomSheet'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(child: const Text('Close BottomSheet'),onPressed: () => Navigator.pop(context),),
                          RaisedButton(child: const Text('Close BottomSheet'),onPressed: () => Navigator.pop(context),)                               
                        ],
                      )
                  
                    ],
                  ),
                ),
              );
            }, // BUILD CONTEXT
          ); // SHOW BUTTON SHEET
  }
  
  //.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}   

}