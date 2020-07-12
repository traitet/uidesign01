// REFERENCE
// https://www.thetopsites.net/article/51847539.shtml
// https://blog.smartnsoft.com/an-automatic-search-bar-in-flutter-flappy-search-bar-a470bc67fa1f

//==========================================================================
// IMPORT
//==========================================================================
import 'package:flappy_search_bar/flappy_search_bar.dart';
// import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//==========================================================================
// STATE WIDGET
//==========================================================================
class SearchBarWidget extends StatefulWidget {
//==========================================================================
// PROPERTY
//==========================================================================  
  // final VoidCallback onTapSelected;
  final void Function(String) onTab;
  // final  SearchBarController<Post> searchBarController ;
//==========================================================================
// CONSTRUCTURE
//==========================================================================
  SearchBarWidget({
    // this.onTapSelected,
    this.onTab,
    // this.searchBarController ,
    Key key,
  }): super(key:key);
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

//==========================================================================
// STATE WIDGET
//==========================================================================
class _SearchBarWidgetState extends State<SearchBarWidget> {
//==========================================================================
// DECLARE VARIABLE
//==========================================================================  
  //searchBarController = SearchBarController();
   final SearchBarController<Post> searchBarController = SearchBarController();
  bool isReplay = false;


//==========================================================================
// GET SEARCH RESULT
//==========================================================================  
  Future<List<Post>> _getALlPosts(String text) async {
    await Future.delayed(Duration(seconds: text.length));
    if (isReplay) return [Post("Replaying !", "Replaying body")];
    // if (text.length == 5) throw Error();
    if (text.length > 6) return [];
    List<Post> posts = [];
    var random = new Random();
    for (int i = 0; i < 10; i++) {
      posts.add(Post("$text $i", "body random number : ${random.nextInt(100)}"));
    }
    return posts;
  }

//==========================================================================
// BUILD WIDGETSAFASF
//==========================================================================  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

//==========================================================================
// SEARCH BAR
//==========================================================================            
        child: SearchBar<Post>(
          onSearch: _getALlPosts,     
          minimumChars: 2,     
//==========================================================================
// PADDING CONFIG
//==========================================================================             
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
//==========================================================================
// SEARCH RESULT CONFIG
//==========================================================================             
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          crossAxisCount: 1,          
          searchBarController: searchBarController,
          debounceDuration: Duration(milliseconds: 500),          
//==========================================================================
// CONFIG LOADING...
//==========================================================================   
          loader: Center(child: Text('Loading...')),
//==========================================================================
// LABEL CONFIG
//==========================================================================             
          placeHolder: Center(child: Text("Search Result")),
          cancellationWidget: Text("Cancel"),
          emptyWidget: Center(child: Text("Not Found")),
          //indexedScaledTileBuilder: (int index) => ScaledTile.count(1, index.isEven ? 2 : 1),

//==========================================================================
// BUTTON UNDER SEARCH BAR
//==========================================================================              
          header: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(child: Text("Sort"),onPressed: () {searchBarController.sortList((Post a, Post b) {return a.body.compareTo(b.body);});},),
              RaisedButton(child: Text("Cancel Sort"),onPressed: () {searchBarController.removeSort();},),
              RaisedButton(child: Text("Replay"),onPressed: () {isReplay = !isReplay;searchBarController.replayLastSearch();},),
            ],
          ),
//==========================================================================
// ON CALCEL
//==========================================================================           
          onCancelled: () {print("Cancelled triggered");},
          


//==========================================================================
// ON ITEM FOUND
//==========================================================================            
          onItemFound: (Post post, int index) {
            return ListTile(
              title: Text("Title: ${post.title}"),
              subtitle: Text('Sub Title: ${post.body}'),        
                    
              // isThreeLine: true,
              onTap: () { 
                widget.onTab(post.body);
                // widget.onTapSelected();
                },);
          },
        ),
      ),
    );
  }
}


//==========================================================================
// POST CLASS
//==========================================================================
class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

