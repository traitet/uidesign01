//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';
import 'package:uidesign01/screens/SnackBarTabView0Page.dart';
import 'package:uidesign01/screens/SnackBarTabView1Page.dart';
import 'package:uidesign01/screens/SnackBarTabView2Page.dart';
import 'package:uidesign01/screens/SnackBarTabView3Page.dart';

//============================================================================
// MAIN CLASS
//============================================================================  
class SnackBarTabViewPage extends StatefulWidget {
  @override
  _SnackBarTabViewPageState createState() => _SnackBarTabViewPageState();
}

//============================================================================
// STATE
//============================================================================  
class _SnackBarTabViewPageState extends State<SnackBarTabViewPage> {
//============================================================================
// GLOBAL KEY (SCAFFOLD FOR SNACKBAR)
//============================================================================  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int tabIndex;    
//============================================================================
// BUILD WIDGET
//============================================================================    
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: MaterialApp(
//============================================================================
// MATERIAL APP
//============================================================================    
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
        home: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text('Snackbar and Bottom Sheet'),
            bottom: TabBar(
              isScrollable: true,
              onTap: (int index){setState(() {tabIndex = index;});},
              tabs:choices.map((Choice choice) {return Tab(text: choice.title,icon: Icon(choice.icon),);}).toList(), )   
            ),
          body: 
          tabIndex == 0 ? SnackBarTabView0Page():
          tabIndex == 1 ? SnackBarTabView1Page():
          tabIndex == 2 ? SnackBarTabView2Page():      
          tabIndex == 3 ? SnackBarTabView3Page(): 
          Container(),   
          ),
          
       ),);}
//============================================================================
// FUNCTION: SNOWSNACKBAR
//============================================================================                
  showSnackBar() {scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Show Snackbar', style: TextStyle(color: Colors.white)),backgroundColor: Colors.red,));}              
}
     

     
           
//*******************************************************************************************************************************
// CLASS
//*******************************************************************************************************************************

//==========================================================================
// CLASS CHOICE
//==========================================================================
class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}
//==========================================================================
// LIST
//==========================================================================
const List<Choice> choices = const <Choice>[
  const Choice(title: 'เพิ่มรูปภาพ', icon: Icons.image),
  const Choice(title: 'รายละเอียด', icon: Icons.list),
  const Choice(title: 'ติดต่อ', icon: Icons.person),
  const Choice(title: 'รับของ', icon: Icons.local_grocery_store),  
];


