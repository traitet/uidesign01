//==========================================================================
// IMPORT
//==========================================================================
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//==========================================================================
// MAIN CLASS
//==========================================================================
class IosInputPage extends StatefulWidget {
  @override
  _IosInputPageState createState() => _IosInputPageState();
}

class _IosInputPageState extends State<IosInputPage> {
//============================================================================
// GLOBAL KEY (SCAFFOLD FOR SNACKBAR)
//============================================================================  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  double _progress = 20;           

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      key: scaffoldKey,      
      appBar: AppBar(title: Text('IOS Input - Cupertino widgets'),),
      body: 
        ListView(children: <Widget>[
          Text('Test#1'),
          RaisedButton(onPressed: (){showActionSheet();},child: Text('Cupertino Action Sheet')),
          RaisedButton(onPressed: (){showAlertDialog();}, child: Text('Get Alert dialog'),),          
          RaisedButton(onPressed: (){datePicker();}, child: Text('Picker'),),                 
          Text('Cupertino Slider'),
          buildCupertinoSlider(),
          Text('Date Time Picker'),
          buildDateTimePicker(),
          Text('Date Picker'),
          buildDatePicker(),
          Text('Time Picker'),
          buildTimePicker(),          


          
    ],
      
      
    )
    );
    

  }


//============================================================================
// CUPTERTINO SLIDER
//============================================================================  
CupertinoSlider buildCupertinoSlider(){
return  CupertinoSlider(
  value: _progress,
  min: 0.0,
  max: 100.0,
  onChanged: (value){
    setState(() {
      _progress = value.roundToDouble();
    });
  },
);}


//============================================================================
// BUILD DATE PICKER
//============================================================================  
  Container buildTimePicker() {
    return Container(
      height: 300,
      child: CupertinoDatePicker(
      mode: CupertinoDatePickerMode.time,
      onDateTimeChanged: (dateTime) {
  }
),
);
  }


//============================================================================
// BUILD DATE PICKER
//============================================================================  
  Container buildDatePicker() {
    return Container(
      height: 300,
      child: CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      onDateTimeChanged: (dateTime) {
  }
),
);
  }

//============================================================================
// BUILD DATE PICKER
//============================================================================  
  Container buildDateTimePicker() {
    return Container(
      height: 300,
      child: CupertinoDatePicker(
      mode: CupertinoDatePickerMode.dateAndTime,
      onDateTimeChanged: (dateTime) {
  }
),
);
  }

 

//============================================================================
// CUPTERTINO SLIDER
//============================================================================ 
Future<DateTime> datePicker() async {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2018),
    lastDate: DateTime(2030),
    builder: (BuildContext context, Widget child) {
      return Theme(data: ThemeData.dark(),child: child,
      );
    }, //BUILDER
  ); //SHOW DATE PICKER
} //END FUNCTION


//============================================================================
// FUNCTION: SHOW DIALOG
//============================================================================  
Future<void> showAlertDialog() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text('Allow "Maps" to access your location while you use the app?'),
        content: Text('Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
        actions: <Widget>[
            CupertinoDialogAction(child: Text('Don\'t Allow'),onPressed: () {Navigator.of(context).pop();},),
            CupertinoDialogAction(child: Text('Allow'),onPressed: () {Navigator.of(context).pop();},),
        ],
      );
    },
  );
}

//============================================================================
// FUNCTION: SHOW BOTTMSHEET
//============================================================================                
Future<void> showActionSheet() async {
    return showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) {
      return CupertinoActionSheet(
        title: Text('Favorite Dessert'),
        message: Text('Please select the best dessert from the options below.'),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: Text('Profiteroles'),
            onPressed: () { /** */ },
          ),
          CupertinoActionSheetAction(
            child: Text('Cannolis'),
            onPressed: () { /** */ },
          ),
          CupertinoActionSheetAction(
            child: Text('Trifie'),
            onPressed: () { /** */ },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          child: Text('Cancel'),
          onPressed: () { /** */ },
        ),
      );
    },
  );


  }


} // END CLASS


