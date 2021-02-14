import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Share Love',
            style: TextStyle(
              fontFamily: 'Retro',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                  Colors.deepOrange.shade300,
                  Colors.pink.shade100
                ])),
          ),
        ),
        backgroundColor: Colors.deepOrange.shade200,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 220.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                'Add Love Points',
                style: TextStyle(
                  fontFamily: 'Retro',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 220.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 100.0,
              ),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                'Enter short details about your good deeds',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.redAccent,
                  fontSize: 14.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on_rounded,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    'Add Location:',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Divider(
                    color: Colors.black,
                    height: 60.0,
                  ),
                  trailing: Icon(
                    Icons.check_circle_outline,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.note_add_rounded,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    'Add a short description:',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.redAccent,
                        fontFamily: 'Source Sans Pro'),
                  ),
                  subtitle: Divider(
                    color: Colors.black,
                    height: 60.0,
                  ),
                  trailing: Icon(
                    Icons.check_circle_outline,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(
            Icons.favorite,
            size: 30.0,
          ),
          backgroundColor: Colors.redAccent,
        ),
      ),
    );
  }
}
