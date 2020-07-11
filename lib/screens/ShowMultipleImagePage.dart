//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/material.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class ShowMultipleImagePage extends StatefulWidget {
  @override
  _ShowMultipleImagePageState createState() => _ShowMultipleImagePageState();
}

//==========================================================================
// STATE CLASS
//==========================================================================
class _ShowMultipleImagePageState extends State<ShowMultipleImagePage> {
//==========================================================================
// OVERLOADING
//==========================================================================
//==========================================================================
// DECLARE VARIABLE
//==========================================================================
//==========================================================================
// BUILD WIDGET
//==========================================================================
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
//==========================================================================
// HOME
//==========================================================================      
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.of(context).pop();}),
          title: Text('Multiple Image Page'),),
      body: 
        
//==========================================================================
// CONTAINER
//==========================================================================   
        Container(
          color: Colors.black,
          height: 250,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                height: 400,
                child: Image(fit: BoxFit.cover,
//==========================================================================
// IMAGE
//==========================================================================                   
                image: AssetImage('assets/images/hotel01.JPG'),)),              
              //Image(fit: BoxFit.cover,image: AssetImage('assets/images/nueng.png'),),               
//==========================================================================
// COLUMN
//==========================================================================   
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.arrow_back,color: Colors.white),                  
                      Icon(Icons.arrow_forward,color: Colors.white),
                    ],
                  ),
//==========================================================================
// TEXT
//==========================================================================   
                  Container(
                    color: Colors.black12,
                    height: 50,
                    child: Row(children: <Widget>[
                      Icon(Icons.person, color: Colors.white,),
                      Expanded(child: Text('See all photos', style: TextStyle(color: Colors.white))),
                      Text('1/34', style: TextStyle(color: Colors.white))
                    ],),
                  )
                ],
              ),


              // Container(color: Colors.red)
            ],
          ),
        ),

      )
      
    );
  }
}

