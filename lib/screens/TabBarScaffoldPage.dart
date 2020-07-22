import 'package:flutter/material.dart';

class TabBarScaffoldPage extends StatefulWidget {
  @override
  _TabBarScaffoldPageState createState() => _TabBarScaffoldPageState();
}

class _TabBarScaffoldPageState extends State<TabBarScaffoldPage> {
  //========================================================
  // DECLARE VARIABLE
  //========================================================
  final List<Tab> _tabs = [
    Tab(text: 'Tab 1',),
    Tab(text: 'Tab 2',),
    Tab(text: 'Tab 3',)        
  ];
  @override
  Widget build(BuildContext context) {
  //========================================================
  // DEFALUT TAB CONTROLLER
  //========================================================    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar Scaffold'),
  //========================================================
  // TAB BAR
  //========================================================          
          bottom: TabBar(tabs: _tabs)
          ),
  //========================================================
  // TAB BAR VIEW
  //========================================================          
        body: TabBarView(children: <Widget>[
          Center(child: Text('Test 1')),
          Center(child: Text('Test 2')),
          Center(child: Text('Test 3')),                    

        ])
        
      ),
    );
  }
}