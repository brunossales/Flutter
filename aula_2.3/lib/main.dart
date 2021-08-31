import 'package:flutter/cupertino.dart';
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
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: SafeArea(
          child : Container(
            color:  Colors.tealAccent,
              child: Center(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.ZTWm37ORebOOewvsKB7nSwDaEs?pid=ImgDet&w=466&h=640&rs=1'),
                      ),
                      title: Text(
                        'Bruno',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://thumbs.dreamstime.com/z/thoughtful-young-caucasian-businessman-glasses-working-laptop-computer-pensive-attractive-hipster-freelancer-thinks-over-108773575.jpg'),
                      ),
                      title: Text(
                        'Carlos',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.KwQpVLXZ1HhBWLuUinOKSwHaFZ?pid=ImgDet&rs=1'),
                      ),
                      title: Text(
                        'Matheus',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/R.d02559036e1e0850e6b789c20eac5d37?rik=QQZ4eGYB50%2fW%2bw&riu=http%3a%2f%2f1.bp.blogspot.com%2f-zqCLUg0r1SA%2fTWLaghB5-7I%2fAAAAAAAAASM%2fSkOSAMbhmq8%2fs1600%2fwenn2860934.jpg&ehk=UtsuS44olkRMG1zsQQNmtDcGqauYJkR91PBCNrl6eqU%3d&risl=&pid=ImgRaw&r=0'),
                      ),
                      title: Text(
                        'Breno',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ]
                )
              ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


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

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
