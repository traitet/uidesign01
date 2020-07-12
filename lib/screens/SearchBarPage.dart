//==========================================================================
// IMPORT
//==========================================================================

// import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:uidesign01/widgets/SearchBarWidget.dart';


//==========================================================================
// MAIN CLASS
//==========================================================================
class SearchBarPage extends StatelessWidget {
    // final SearchBarController<Post> _searchBarController = SearchBarController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Theme.of(context).primaryColor),
      home: SearchBarWidget(
        

       // onTab: (value){print(value.toString());},

        onTab: (value){
        Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDetailWidget(searchResult: value,)),); 
        },),
    );
  }
}



//==========================================================================
// DETAIL WIDGET
//==========================================================================  
class SearchDetailWidget extends StatelessWidget {
  final String searchResult;
  SearchDetailWidget({
    this.searchResult='',
    Key key,
  }): super(key: key);
//==========================================================================
// OVERRIDE BUILD WIDGET
//==========================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back),onPressed: () => Navigator.of(context).pop(),),
            Center(child: Text("Detail: " + searchResult)),
          ],
        ),
      ),
    );
  }
}

