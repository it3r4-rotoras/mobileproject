import 'package:flutter/material.dart';
import 'my_num_page.dart';

class MyItemsPage extends StatefulWidget {
  MyItemsPage({Key key, this.title}) : super(key: key);

  static const String routeName = "/MyItemsPage";

  final String title;

  @override
  _MyItemsPageState createState() => new _MyItemsPageState();

}

class _MyItemsPageState extends State<MyItemsPage> {
  double _animatedHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    var button = new IconButton(icon: new Icon(Icons.chevron_left), onPressed: _onButtonPressed);
    return new Scaffold(
   bottomNavigationBar: BottomAppBar(
         shape: const CircularNotchedRectangle(),
         color: Colors.teal[500],
           child: Stack(
            children: <Widget>[
            new  Container(
               height: 45.0,
          decoration: new BoxDecoration(
            color: Colors.blueGrey[800],
            boxShadow: [
              new BoxShadow(blurRadius: 10.0)
            ],
            borderRadius: new BorderRadius.vertical(
                top: new Radius.elliptical(
                    MediaQuery.of(context).size.width, 580.0)),
          ),
             child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  // setState(() {
                  //   // _myPage.jumpToPage(0);
                  // });
                },
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.person),
                onPressed: () {
                  // setState(() {
                  //   _myPage.jumpToPage(1);
                  // });
                },
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // setState(() {
                  //   _myPage.jumpToPage(2);
                  // });
                },
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.list),
                onPressed: () {
                  // setState(() {
                  //   _myPage.jumpToPage(3);
                  // });
                },
              )
            ],
          ),
            ),
          ],
  
      ),        
      ),

   body: Container(
           color: Colors.teal[500],
           
        child: Stack(
          
        children: <Widget>[
           Container(
                  margin: EdgeInsets.only(top: 160, left: 15, right: 15),
              child: ListView(
                children: ListTile.divideTiles(
                    context: context,
                    tiles: [                      
                      new Card(
                          elevation: 5,
                          
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: GestureDetector(
                                    onTap: ()=>_onButtonPressedNext(),
                                      child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                  
                                    title: Text(
                                      "Maria Reyna Hospital",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                                    ),
                                  
                                    // subtitle: Row(
                                    //   children: <Widget>[
                                    //     Text("24 hours open", style: TextStyle(color: Colors.black))
                                    //   ],
                                    // ),
                                    trailing:
                                        Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
                                  ),
                                ),
                              ],
                            ),
                            
                            
                      ),
       
                        
                      new Card(
                          elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ListTile(
                             contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            // leading: Container(
                            //   // padding: EdgeInsets.only(right: 12.0),
                            //   // decoration: new BoxDecoration(
                            //   //     border: new Border(
                            //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
                            //   // child: Icon(Icons.autorenew, color: Colors.black),
                            // ),
                            title: Text(
                              "NMMC Hospital",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                            // subtitle: Row(
                            //   children: <Widget>[
                            //     // Icon(Icons.linear_scale, color: Colors.black),
                            //     // Text("24 hours open", style: TextStyle(color: Colors.black))
                            //   ],
                            // ),
                            trailing:
                                 Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
                      ),
                      new Card(
                          elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ListTile(
                             contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            // leading: Container(
                            //   // padding: EdgeInsets.only(right: 12.0),
                            //   // decoration: new BoxDecoration(
                            //   //     border: new Border(
                            //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
                            //   // child: Icon(Icons.autorenew, color: Colors.black),
                            // ),
                            title: Text(
                              "Polymedic Hospital",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                            // subtitle: Row(
                            //   children: <Widget>[
                            //     // Icon(Icons.linear_scale, color: Colors.black),
                            //     // Text("24 hours open", style: TextStyle(color: Colors.black))
                            //   ],
                            // ),
                            trailing:
                                 Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
                      ),
                      new Card(
                          elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ListTile(
                             contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            // leading: Container(
                            //   // padding: EdgeInsets.only(right: 12.0),
                            //   // decoration: new BoxDecoration(
                            //   //     border: new Border(
                            //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
                            //   // child: Icon(Icons.autorenew, color: Colors.black),
                            // ),
                            title: Text(
                              "Sabal Hospital",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                            // subtitle: Row(
                            //   children: <Widget>[
                            //     // Icon(Icons.linear_scale, color: Colors.black),
                            //     // Text("24 hours open", style: TextStyle(color: Colors.black))
                            //   ],
                            // ),
                            trailing:
                                Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
                      ),
                 
                          new Card(
                          elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: ListTile(
                             contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            // leading: Container(
                            //   // padding: EdgeInsets.only(right: 12.0),
                            //   // decoration: new BoxDecoration(
                            //   //     border: new Border(
                            //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
                            //   // child: Icon(Icons.autorenew, color: Colors.black),
                            // ),
                            title: Text(
                              "CUMC Hospital",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                            // subtitle: Row(
                            //   children: <Widget>[
                            //     // Icon(Icons.linear_scale, color: Colors.black),
                            //     // Text("24 hours open", style: TextStyle(color: Colors.black))
                            //   ],
                            // ),
                            trailing:
                                 Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
                      ),
                      
              
            ]
        ).toList(),
      )
      
     
        
        ),
      
          new Column(
            children: <Widget>[
            new  Container(
              
           
           height: 160.0,
          
          decoration: new BoxDecoration(
            color: Colors.grey[800],
            boxShadow: [
              new BoxShadow(blurRadius: 10.0)
            ],
            borderRadius: new BorderRadius.vertical(
                bottom: new Radius.elliptical(
                    MediaQuery.of(context).size.width, 30.0)),
          ),
           child: Stack(  
        children: <Widget>[
            Row(
            children: <Widget>[
              Expanded(
            flex: 1,
            child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child:IconButton(
                  icon: Icon(Icons.chevron_left,size: 35,color: Colors.grey),
                  alignment: Alignment.topLeft,
                  onPressed: () => _onButtonPressed(),
                    
                  
               ),
              height: 50,
            ),
          ),
          Container(
            height: 100,
            width: 50,
          ),
          Expanded(
            flex: 1,
            child: Container(
                 margin: EdgeInsets.only(top: 20),
                  child:IconButton(
                  icon: Icon(Icons.search,size: 30,color: Colors.teal),
                  alignment: Alignment.topRight,
                  onPressed: () {
                  },
               ),
              height: 50,
            ),
          ),
            ],
          ),
           Row(
            children: [
               Container(
                  margin: EdgeInsets.only(top: 85, left: 20),
                  alignment: Alignment.topRight,
                  
                  child:Text('Hospital',
                  style: new TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
             
              
            ),
        
            ]
          ),
        ],
        ),
            ),
            ],
          ),
        ],
        ),
        
      ),
      
      
    );
    
  }


  void _onButtonPressed() {
    Navigator.pop(context);
  }
    void _onButtonPressedNext() {
        Navigator.push(context, 
      MaterialPageRoute(builder: (context) => MyNumsPage())
    );
  }

}







// import 'package:flutter/material.dart';
// import 'my_num_page.dart';

// class MyItemsPage extends StatefulWidget {
//   MyItemsPage({Key key, this.title}) : super(key: key);

//   static const String routeName = "/MyItemsPage";

//   final String title;

//   @override
//   _MyItemsPageState createState() => new _MyItemsPageState();

// }

// class _MyItemsPageState extends State<MyItemsPage> {
//   double _animatedHeight = 100.0;
//   @override
//   Widget build(BuildContext context) {
//     var button = new IconButton(icon: new Icon(Icons.chevron_left), onPressed: _onButtonPressed);
//     return new Scaffold(
 

//    body: Container(
//            color: Colors.teal[500],
           
//         child: Stack(
          
//         children: <Widget>[
//            Container(
//                   margin: EdgeInsets.only(top: 160, left: 15, right: 15),
//               child: ListView(
//                 children: ListTile.divideTiles(
//                     context: context,
//                     tiles: [                      
//                       new Card(
//                           elevation: 5,
                          
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             child: Column(
//                               children: <Widget>[
//                                 Container(
//                                   child: GestureDetector(
//                                     onTap: ()=>_onButtonPressedNext(),
//                                       child: ListTile(
//                                     contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                  
//                                     title: Text(
//                                       "Maria Reyna Hospital",
//                                       style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                                     ),
                                  
//                                     subtitle: Row(
//                                       children: <Widget>[
//                                         Text("24 hours open", style: TextStyle(color: Colors.black))
//                                       ],
//                                     ),
//                                     trailing:
//                                         Icon(Icons.chevron_right, color: Colors.yellow[700], size: 25.0)),
//                                   ),
//                                 ),
//                               ],
//                             ),
                            
                            
//                       ),
       
                        
//                       new Card(
//                           elevation: 5,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             child: ListTile(
//                              contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
//                             // leading: Container(
//                             //   // padding: EdgeInsets.only(right: 12.0),
//                             //   // decoration: new BoxDecoration(
//                             //   //     border: new Border(
//                             //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
//                             //   // child: Icon(Icons.autorenew, color: Colors.black),
//                             // ),
//                             title: Text(
//                               "NMMC Hospital",
//                               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                             ),
//                             // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//                             subtitle: Row(
//                               children: <Widget>[
//                                 // Icon(Icons.linear_scale, color: Colors.black),
//                                 // Text("24 hours open", style: TextStyle(color: Colors.black))
//                               ],
//                             ),
//                             trailing:
//                                  Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
//                       ),
//                       new Card(
//                           elevation: 5,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             child: ListTile(
//                              contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
//                             // leading: Container(
//                             //   // padding: EdgeInsets.only(right: 12.0),
//                             //   // decoration: new BoxDecoration(
//                             //   //     border: new Border(
//                             //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
//                             //   // child: Icon(Icons.autorenew, color: Colors.black),
//                             // ),
//                             title: Text(
//                               "Polymedic Hospital",
//                               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                             ),
//                             // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//                             subtitle: Row(
//                               children: <Widget>[
//                                 // Icon(Icons.linear_scale, color: Colors.black),
//                                 // Text("24 hours open", style: TextStyle(color: Colors.black))
//                               ],
//                             ),
//                             trailing:
//                                  Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
//                       ),
//                       new Card(
//                           elevation: 5,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             child: ListTile(
//                              contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
//                             // leading: Container(
//                             //   // padding: EdgeInsets.only(right: 12.0),
//                             //   // decoration: new BoxDecoration(
//                             //   //     border: new Border(
//                             //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
//                             //   // child: Icon(Icons.autorenew, color: Colors.black),
//                             // ),
//                             title: Text(
//                               "Sabal Hospital",
//                               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                             ),
//                             // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//                             subtitle: Row(
//                               children: <Widget>[
//                                 // Icon(Icons.linear_scale, color: Colors.black),
//                                 // Text("24 hours open", style: TextStyle(color: Colors.black))
//                               ],
//                             ),
//                             trailing:
//                                 Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
//                       ),
//                       new Card(
//                           elevation: 5,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             child: ListTile(
//                              contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
//                             // leading: Container(
//                             //   // padding: EdgeInsets.only(right: 12.0),
//                             //   // decoration: new BoxDecoration(
//                             //   //     border: new Border(
//                             //   //         right: new BorderSide(width: 1.0, color: Colors.black))),
//                             //   // child: Icon(Icons.autorenew, color: Colors.black),
//                             // ),
//                             title: Text(
//                               "CUMC Hospital",
//                               style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                             ),
//                             // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//                             subtitle: Row(
//                               children: <Widget>[
//                                 // Icon(Icons.linear_scale, color: Colors.black),
//                                 // Text("24 hours open", style: TextStyle(color: Colors.black))
//                               ],
//                             ),
//                             trailing:
//                                  Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)),
//                       ),
              
//             ]
//         ).toList(),
//       )
        
//         ),
      
//           new Column(
//             children: <Widget>[
//             new  Container(
              
           
//            height: 160.0,
          
//           decoration: new BoxDecoration(
//             color: Colors.grey[800],
//             boxShadow: [
//               new BoxShadow(blurRadius: 10.0)
//             ],
//             borderRadius: new BorderRadius.vertical(
//                 bottom: new Radius.elliptical(
//                     MediaQuery.of(context).size.width, 30.0)),
//           ),
//            child: Stack(  
//         children: <Widget>[
//             Row(
//             children: <Widget>[
//               Expanded(
//             flex: 1,
//             child: Container(
//                   margin: EdgeInsets.only(top: 10),
//                   child:IconButton(
//                   icon: Icon(Icons.chevron_left,size: 35,color: Colors.grey),
//                   alignment: Alignment.topLeft,
//                   onPressed: () => _onButtonPressed(),
                    
                  
//                ),
//               height: 50,
//             ),
//           ),
//           Container(
//             height: 100,
//             width: 50,
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//                  margin: EdgeInsets.only(top: 20),
//                   child:IconButton(
//                   icon: Icon(Icons.search,size: 30,color: Colors.teal),
//                   alignment: Alignment.topRight,
//                   onPressed: () {
//                   },
//                ),
//               height: 50,
//             ),
//           ),
//             ],
//           ),
//            Row(
//             children: [
//                Container(
//                   margin: EdgeInsets.only(top: 85, left: 20),
//                   alignment: Alignment.topRight,
                  
//                   child:Text('Hospital',
//                   style: new TextStyle(
//                     fontSize: 45.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   ),
             
              
//             ),
        
//             ]
//           ),
//         ],
//         ),
//             ),
//             ],
//           ),
//         ],
//         ),
//       ),
      
//     );
//   }


//   void _onButtonPressed() {
//     Navigator.pop(context);
//   }
//     void _onButtonPressedNext() {
//         Navigator.push(context, 
//       MaterialPageRoute(builder: (context) => MyNumsPage())
//     );
//   }

// }