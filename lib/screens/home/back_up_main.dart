import 'my_num_page.dart';
import 'package:flutter/material.dart';
import 'my_items_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      MyItemsPage.routeName: (BuildContext context) => new MyItemsPage(title: "MyItemsPage"),
    };
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;
  int _counter = 0;
  PageController _myPage = PageController(initialPage: 0);
   

  void _incrementCounter() {
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
 
      body: Container(
           color: Colors.teal[500],
        child: Stack(
          
        children: <Widget>[

          new Column(
            children: <Widget>[
            new  Container(
            height: 526.0,
            decoration: new BoxDecoration(
            color: Colors.grey[800],
            boxShadow: [
              new BoxShadow(blurRadius: 40.0)
            ],
            borderRadius: new BorderRadius.vertical(
                bottom: new Radius.elliptical(
                    MediaQuery.of(context).size.width, 50.0)),
            ),
            child: Stack(
            children: <Widget>[
            Row(
              children: [
                Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 37),
                  alignment: Alignment.topRight,
                  child:IconButton(
                  icon: Icon(Icons.search,size: 30,color: Colors.teal),
                  onPressed: () {

                  },
               ),
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
                Column(
                  children: [
                    Container(
                          height: 75,
                          width: 75,
                          margin: EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 13.0,
                              color: Colors.black.withOpacity(.5),
                              offset: Offset(6.0, 7.0),
                            ),
                          ],
                            color: Colors.teal[600],
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                            child:  IconButton(
                                iconSize: 50.0,
                                color: Colors.white,
                                padding: EdgeInsets.only(),
                                icon: new Image.asset('assets/images/medic.png'),
                                onPressed: () => _incrementCounter(), 
                              ),
                          ),
                   Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'Hospital',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      )
                      ),
                  ],
                ),
                Column(
                  children: [
                   Container(
                          height: 75,
                          width: 75,
                          margin: EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 13.0,
                              color: Colors.black.withOpacity(.5),
                              offset: Offset(6.0, 7.0),
                            ),
                          ],
                            color: Colors.teal[600],
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                            child:  IconButton(
                                iconSize: 50.0,
                                color: Colors.white,
                                padding: EdgeInsets.only(),
                                icon: new Image.asset('assets/images/shield-alt.png'),
                                onPressed: () => _incrementCounter(), 
                              ),
                          ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'Police',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      )
                      ),
                  ],
                ),
                          Column(
                  children: [
                   Container(
                          height: 75,
                          width: 75,
                          margin: EdgeInsets.only(top: 100),
                          decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 13.0,
                              color: Colors.black.withOpacity(.5),
                              offset: Offset(6.0, 7.0),
                            ),
                          ],
                            color: Colors.teal[600],
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                            child:  IconButton(
                                iconSize: 50.0,
                                color: Colors.white,
                                padding: EdgeInsets.only(),
                                icon: new Image.asset('assets/images/building.png'),
                                onPressed: () => _incrementCounter(), 
                              ),
                          ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'Barangay',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      )
                      ),
                  ],
                ),
                    ]
                        ),

              ],
              ),
            ),
          ],
        )
      ],
      ),        
      ),

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
              new BoxShadow(blurRadius: 200.0)
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
                  setState(() {
                    // _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.person),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {
                  setState(() {
                    // _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    // _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
            ),
          ],
  
      ),        
      ),
      floatingActionButton: new  Padding(
         padding: const EdgeInsets.only(bottom: 25.0),
            child: FloatingActionButton(
              child: Icon(Icons.add,  size: 38.0),
              backgroundColor: Colors.teal[600],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18.0)),side: BorderSide(color: Colors.white, width: 4.5)),
              onPressed: () => _onButtonPressed(),
            ),  
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
    );
  }

  void _onButtonPressed() {
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }
}


