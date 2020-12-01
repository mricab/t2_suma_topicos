import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
  int _suma = 0;
  TextEditingController valor1 = new TextEditingController();
  TextEditingController valor2 = new TextEditingController();

  void _sumar() {
    setState(() {
      _suma = int.parse(valor1.text) + int.parse(valor2.text);
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
              'Resultado:',
            ),
            Text(
              '$_suma',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextField(
              controller: valor1,
              decoration: new InputDecoration(labelText: 'Primer Número'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: valor2,
              decoration: new InputDecoration(labelText: 'Segundo Número'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _sumar,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
