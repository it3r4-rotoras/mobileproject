import 'package:flutter/material.dart';
import 'calls_and_messages_service.dart';
import 'package:url_launcher/url_launcher.dart';

class MyNumsPage extends StatefulWidget {
  static String routeName;

  MyNumsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyNumsPage createState() => new _MyNumsPage();
}

class _MyNumsPage extends State<MyNumsPage> {
  double _animatedHeight = 100.0;
  @override
  Widget build(BuildContext context) {
    var button = new IconButton(icon: new Icon(Icons.chevron_left), onPressed: _onButtonPressed);
    return new Scaffold(
 

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
                                    onTap: () => launch("tel://+6396683712630"),
                                      child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                    leading: SizedBox(
                                      child: Image.asset('assets/images/tm.png'),
                                    ),
                                    title: Text(
                                      "+6396683712630",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                                    ),
                                  
                                    // subtitle: Row(
                                    //   children: <Widget>[
                                    //     Text("24 hours open", style: TextStyle(color: Colors.black))
                                    //   ],
                                    // ),
                                    // trailing:
                                        // Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)
                                        ),
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
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: GestureDetector(
                                    onTap: () => launch("tel://+63995248237"),
                                      child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                    leading: SizedBox(
                                      child: Image.asset('assets/images/globe.png'),
                                    ),
                                    title: Text(
                                      "0995248237",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                                    ),
                                  
                                    // subtitle: Row(
                                    //   children: <Widget>[
                                    //     Text("24 hours open", style: TextStyle(color: Colors.black))
                                    //   ],
                                    // ),
                                    // trailing:
                                    //     Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)
                                    ),
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
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: GestureDetector(
                                    onTap: () => launch("tel://+639824435241"),
                                      child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                    leading: SizedBox(
                                      child: Image.asset('assets/images/tnt.png'),
                                    ),
                                    title: Text(
                                      "09824435241",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                                    ),
                                  
                                    // subtitle: Row(
                                    //   children: <Widget>[
                                    //     Text("24 hours open", style: TextStyle(color: Colors.black))
                                    //   ],
                                    // ),
                                    // trailing:
                                    //     Icon(Icons.chevron_right, color: Colors.grey, size: 25.0)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                            
                      ),
              //             new Card(
              //             elevation: 5,
                          
              //               shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20.0),
              //               ),
              //               child: Column(
              //                 children: <Widget>[
              //                   Container(
              //                     child: GestureDetector(
              //                       onTap: () => launch("tel://+639644889732"),
              //                         child: ListTile(
              //                       contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
              //                       // trailing:
              //                       //     Icon(Icons.chevron_right, color: Colors.grey, size: 25.0),
                                  
              //                       title: Text(
              //                         "09644889732",
              //                         style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              //                       ),
                                  
              //                       // subtitle: Row(
              //                       //   children: <Widget>[
              //                       //     Text("24 hours open", style: TextStyle(color: Colors.black))
              //                       //   ],
              //                       // ),
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
                   
              // ),
                            

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
                  
                  child:Text('Maria Reyna',
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
}




// import 'package:flutter/material.dart';



// class MyNumsPage extends StatefulWidget {
//   static String routeName;

//   MyNumsPage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyNumsPage createState() => new _MyNumsPage();
// }

// class _MyNumsPage extends State<MyNumsPage> {
//   final List<String> entries = <String>['A', 'B', 'C'];
//   final List<int> colorCodes = <int>[600, 500, 100];
//   var entries2 = [
//     {'name': 'A'},  
//     {'name': 'B'},  
//     {'name': 'C'},  
//   ];

//   void getItems(){

//   }
  
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
//               margin: EdgeInsets.only(top: 177, left: 7, right: 7),
//               child: ListView.builder(
//               padding: const EdgeInsets.all(8),
//               itemCount: entries2.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                         elevation: 5,
                        
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20.0),
//                           ),
//                           child: Column(
//                             children: <Widget>[
//                               Container(
//                                 child: GestureDetector(
//                                   // onTap: ()=>_onButtonPressedNext(),
//                                     child: ListTile(
//                                   contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                                
//                                   title: Text(
//                                     "${entries2[index]} Hospital",
//                                     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
//                                   ),
                                
//                                   subtitle: Row(
//                                     children: <Widget>[
//                                       Text("24 hours open", style: TextStyle(color: Colors.black))
//                                     ],
//                                   ),
//                                   trailing:
//                                       Icon(Icons.chevron_right, color: Colors.yellow[700], size: 25.0)),
//                                 ),
//                               ),
//                             ],
//                           ),
                          
                          
//                     );
//                 }
//               ),
        
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
// }