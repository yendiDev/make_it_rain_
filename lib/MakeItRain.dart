import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  String richText1 = "Get Rich!";

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
      if(_moneyCounter > 500){
          richText1 = "You're even richer!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "$richText1!",
                style: new TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
              ),
            ),

            new Expanded(
                child: new Center(
              child: new Text(
                "$_moneyCounter",
                style: new TextStyle(
                  color: _moneyCounter > 2000? Colors.greenAccent: Colors.red,
                  fontSize: 46.9,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )),
            new Expanded(
                child: new Center(
              child: new FlatButton(
                  color: Colors.lightGreen,
                  textColor: Colors.white,
                  onPressed: (){
                    _rainMoney();

                  },
                  child: new Text(
                    "Let it rain",
                    style: new TextStyle(fontSize: 19.9),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
