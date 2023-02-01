import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TIP CALCULATER'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5,top: 5,right: 4,left: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.hatCowboy,color: Colors.black12, size: 50,),
                    Text('TIP CALULATER', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(bottom: 18,right: 25,left: 25,top: 18),
                color: Colors.blue.shade50,
              ),
            ),
            Expanded(
              flex: 1,
              child:  Row(
                children: [
                  Expanded(
                      child: Text('ENTER BILL',style: TextStyle(fontSize: 25),)),
                  Expanded(flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.currency_rupee),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5,right: 4,left: 4),
                color: Colors.blue.shade600,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5,right: 4,left: 4),
                color: Colors.blue.shade800,
              ),
            ),Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 5,right: 4,left: 4),
                color: Colors.blue.shade900,
              ),
            ),
          ],
        )
    );
  }
}
