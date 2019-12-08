import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.teal,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

   @override
  _MyHomePageState createState() => _MyHomePageState();


  static const kRoutName = '/RoutesExample';
  final String title;
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  PageController _myPage = PageController(initialPage: 0);

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.teal,
       bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
           height: 50.0,
           color: Colors.teal[900],
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                color: Colors.grey,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
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
                    _myPage.jumpToPage(1);
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
                    _myPage.jumpToPage(2);
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
                    _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
          
        ),
      ),
       body: PageView(
        
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 62,
                  width: 60,
                  margin: EdgeInsets.only(top: 75),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: IconButton(
                    icon: new Image.asset('assets/images/medic.png'),
                    iconSize: 100.0,
                    color: Colors.white,
                    padding: EdgeInsets.only(),
                    onPressed: () {
                      setState(() {
                        // _myPage.jumpToPage(1);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute()),
                        );
                      });
                    },
                  ),
                
                ),
              Container(
                  height: 62,
                  width: 60,
                  margin: EdgeInsets.only(top: 75),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: IconButton(
                    iconSize: 50.0,
                    color: Colors.white,
                    padding: EdgeInsets.only(),
                    icon: new Image.asset('assets/images/shield-alt.png'),
                    onPressed: () {
                      setState(() {
                        // _myPage.jumpToPage(0);
                      });
                    },
                  ),
                ),
                Container(
                  height: 62,
                  width: 60,
                  margin: EdgeInsets.only(top: 75),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: IconButton(
                    iconSize: 50.0,
                    color: Colors.white,
                    padding: EdgeInsets.only(),
                    icon: new Image.asset('assets/images/building.png'),
                    onPressed: () {
                      setState(() {
                        // _myPage.jumpToPage(0);
                      });
                    },
                  ),
                ),
              ],      
            ),  
            ]
          ),
          
          Center(
            child: Container(
              child: Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          )
        ],
        // physics: NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      
     
    );
      
  }
}





class SecondRoute extends StatefulWidget {
  SecondRoute({Key key, this.title}) : super(key: key);

   @override
  _SecondRouteState createState() => _SecondRouteState();


  static const kRoutName = '/RoutesExample';
  final String title;
}

class _SecondRouteState extends State<SecondRoute> {
  int _counter = 0;
  PageController _myPage = PageController(initialPage: 0);
  List<String> entries = <String>['Maria Reyna', 'Polymedic', 'NMMC'];

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Hospital', 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold,
            fontSize: 30),
            ),
        iconTheme: IconThemeData(
            color: Colors.teal[900],
          ),
        // title: Text("Second Route"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(      
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.teal[900]),
                    //   // borderRadius: BorderRadius.circular(100)
                    // ),
                    // margin: EdgeInsets.only(bottom: 8),     
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[ 
                        Expanded( 
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.teal[900])
                            ),
                            color: Colors.white,
                            onPressed: () {},
                            padding: EdgeInsets.all(12),
                            child: Text("${entries[index]} Hospital",style: TextStyle(fontSize: 20)),
                          )
                        ),
                      ],
                    ),
                  );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      // body: PageView(
      //   children: <Widget>[
      //     Container(
      //       margin: EdgeInsets.only(left: 20.0, top: 10, right: 20, bottom: 20),
      //       // color: Colors.black,
      //         child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //           children: <Widget>[
      //             Container(
      //               padding: EdgeInsets.only(bottom: 25),
      //               child: Text(
      //             'Hospital', 
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //               fontSize: 30,
      //               ),
      //             ),
      //             ),
                  
        //           // Container(      
        //           //   decoration: BoxDecoration(
        //           //     border: Border.all(color: Colors.teal[900])
        //           //   ),
        //           //   margin: EdgeInsets.only(bottom: 8),     
        //           //   child: Row(
        //           //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           //     children: <Widget>[ 
        //           //       Expanded( 
        //           //         child: RaisedButton(
        //           //           color: Colors.white,
        //           //           onPressed: () {},
        //           //           padding: EdgeInsets.all(12),
        //           //           child: Text("Maria Reyna Hospital",style: TextStyle(fontSize: 20)),
        //           //         )
        //           //       ),
        //           //     ],
        //           //   ),
        //           // ),
        //         ],
        //       ),
        //   )
        // ],
      // ),
    );
  }
}

