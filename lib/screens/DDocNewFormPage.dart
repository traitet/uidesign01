
//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//==========================================================================
// MAIN CLASS
//==========================================================================
class DDocNewFormPage extends StatefulWidget {
  @override
  _DDocNewFormPageState createState() => _DDocNewFormPageState();
}


//==========================================================================
// STATE CLASS
//==========================================================================
class _DDocNewFormPageState extends State<DDocNewFormPage> {

//==========================================================================
// OVERLOAD
//==========================================================================
//==========================================================================
// DECLARE PARAMETER
//==========================================================================  

//==========================================================================
// BUILD WIDGET
//==========================================================================
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//==========================================================================
// THEME
//==========================================================================
        theme: ThemeData(primarySwatch: Theme.of(context).primaryColor,),    
//==========================================================================
// HOME
//==========================================================================          
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                FlatButton(onPressed: (){}, child: Text('Add', style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
                // IconButton(onPressed: (){},icon: Icon(Icons.control_point),)
                ],   
              leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: () => Navigator.of(context).pop()),
              title: Text('New Form Doc'),
            ),
            body: NewFormWidget(),
        )     
    );
  }
}


//==========================================================================
// CLASS
//==========================================================================    
class NewFormWidget extends StatefulWidget {
    const NewFormWidget({
    Key key,
  }) : super(key: key);
  @override
  _NewFormWidgetState createState() => _NewFormWidgetState();
}
//==========================================================================
// STATE
//==========================================================================    
class _NewFormWidgetState extends State<NewFormWidget> {
  bool _isAllDay = false;
//==========================================================================
// BUILD WIDGET
//==========================================================================    
  @override
  Widget build(BuildContext context) {
    return 

//==========================================================================
// IMAGE
//==========================================================================    
 
      Column(
        children: <Widget>[
          SizedBox(height:10),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                DocImageWidget(imageUrl: 'assets/images/nueng.png',text: 'Cover',),  
                DocImageWidget(imageUrl: 'assets/images/nueng.png',),          
                DocImageWidget(imageUrl: 'assets/images/nueng.png',),
                DocImageWidget(imageUrl: 'assets/images/nueng.png',),
                DocImageWidget(imageUrl: 'assets/images/nueng.png',),                
                DocImageWidget(imageUrl: 'assets/images/nueng.png',),
                DocImageWidget(),                    
              ],
            ),
          ),
          SizedBox(height:10),
          LineWidget(),
//==========================================================================
// PRODUCT NAME
//==========================================================================     

          Expanded(
            child: Container(
              child: ListView(children: <Widget>[
//==========================================================================
// IS ALL DAY
//========================================================================== 
                SectionWidget(),                     
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 40,
                  child: Row(children: <Widget>[
                    Expanded(child: Text('All-day')),
                    CupertinoSwitch(value: _isAllDay, onChanged: (bool newValue){setState(() {_isAllDay = newValue;});})
                  ],),
                ), 
                LineWidget(),
//==========================================================================
// TIME ZONE
//==========================================================================    
                SelectorWidget(title: 'Repeat', text: 'Never'), 
                LineWidget(),
                SelectorWidget(title: 'Travel Time', text: 'None'), 
                LineWidget(),                
                SelectorWidget(title: 'Invitees', text: 'None'),  
                SectionWidget(),                                   
                SelectorWidget(title: 'Alert', text: 'None'),    
                LineWidget(),                    
                SelectorWidget(title: 'Show As', text: 'Busy'),                                            
                SectionWidget(),
                PickSelectorWidget(title: 'Starts', text: '7 Jul 2020 13:00'),   
                LineWidget(),  
                PickSelectorWidget(title: 'End', text: '13:00'),      
                SectionWidget(),                 
                SizedBox(height: 5,),
//==========================================================================
// TEXT "URL"
//==========================================================================                 
                Padding(
                  padding: const EdgeInsets.only(left:8, top: 4, bottom:4),
                  child: CupertinoTextField(
                    decoration: BoxDecoration(border: null),
                    placeholder: 'URL',controller: TextEditingController(text: ''),clearButtonMode: OverlayVisibilityMode.editing,),
                ),   
                LineWidget(),    
//==========================================================================
// TEXT "NOTE"
//==========================================================================                                   
                Padding(
                padding: const EdgeInsets.only(left:8,top: 4, bottom:4),
                
                  child: CupertinoTextField(
                    decoration: BoxDecoration(border: null),
                    maxLines: 5,
                    placeholder: 'Note',controller: TextEditingController(text: ''),clearButtonMode: OverlayVisibilityMode.editing,),
                ),                                   
                 
                ],),
            ),
          ),

        ],
      );
  }
}


//==========================================================================
// SELECTOR WIEGET
//==========================================================================  
class PickSelectorWidget extends StatelessWidget {
  final String title;
  final String text;
  const PickSelectorWidget({
    this.title,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 40,
      child: Row(children: <Widget>[
        Expanded(child: Text(title??'')),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(text??'',style: TextStyle(color: Colors.black)),
        ),
      ],),
    );
  }
}

//==========================================================================
// SELECTOR WIEGET
//==========================================================================  
class SelectorWidget extends StatelessWidget {
  final String title;
  final String text;
  const SelectorWidget({
    this.title,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 40,
      child: Row(children: <Widget>[
        Expanded(child: Text(title??'')),
        Text(text??'',style: TextStyle(color: Colors.grey)),
        Icon(Icons.navigate_next,color: Colors.black12,),
      ],),
    );
  }
}


//==========================================================================
// LINE WIDGET
//========================================================================== 
class SectionWidget extends StatelessWidget {
  const SectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.black12
    ,child: SizedBox(height: 30));
  }
}

//==========================================================================
// LINE WIDGET
//========================================================================== 
class LineWidget extends StatelessWidget {
  const LineWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(color: Colors.grey[400],child: SizedBox(height: 0.5)),
    );
  }
}


//==========================================================================
// NEW FORM WIDGET
//==========================================================================  
class DocImageWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  const DocImageWidget({
    this.text,
    this.imageUrl,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.deepOrange)),      
        child: Container(
          height: 80,
          width: 80,
          child: imageUrl != null ? Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
            Image(fit: BoxFit.cover,image: AssetImage(imageUrl),),   
            text!=null ? Container(color: Colors.black26,child: SizedBox(height: 20,child: Center(child: Text("Cover Image",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 15))),),):Container(),                 
          ],):
          Container(
            height: 80,
            width: 80,
            alignment: Alignment.center,
            child: Text('+ Add\nImage/Video',textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrange,fontSize: 12)),
          ),
        ),
      ),
    );
  }
}