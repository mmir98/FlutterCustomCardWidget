import 'package:CustomCardWidget/CustomCardWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Widget',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Custom Widget'),
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
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> data = [
      {
        "title": "Card title 1",
        "description":
            "Some text as description for card 1 Some text as description for card 1 Some text as description for card 1 Some text as ",
        "img": "images/card1_img.jpg"
      },
      {
        "title": "Card title 2",
        "description": "Some text as description for card 2",
        "img": "images/card2_img.jpg"
      },
      {
        "title": "Card title 3",
        "description": "Some text as description for card 3",
        "img": "images/card3_img.jpg"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ...data
                  .map((e) => CustomCard(
                        title: e['title'],
                        description: e['description'],
                        imgPath: e['img'],
                        // imageWidth: 500,  //Define a specific width and height for the image in the customCard.
                        // imageHeight: 180,
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
