import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin{
//================================================================
// DECLARE (1) TAB CONTROLLER (2) TAB
//================================================================
  TabController _tabController;
  final List<Tab> _tabs = [
    Tab(
      text: 'tAB 1',
    ),
    Tab(
      text: 'tAB 2',
    ),
    Tab(
      text: 'tAB 3',
    ),
  ];

//================================================================
// INIT STATE
//================================================================
@override
void initState(){
  super.initState();
  _tabController = TabController(length: 3, vsync: this);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab bar')),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue),
//================================================================
// TAB BAR
//================================================================        
            child: TabBar(
              controller: _tabController,
              tabs: _tabs),
          ),
//================================================================
// TAB BAR VIEW
//================================================================     
          Container(
            height: 200,
            child: TabBarView(
              controller: _tabController,          
              children: <Widget>[
                Center(child: Text('Tab 1')),
                Center(child: Text('Tab 2')),
                Center(child: Text('Tab 3')),                            
            ]     ),
          )  
        ],
      ),
    );



  }
}
