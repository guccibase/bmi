import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: ExtractedWidget(myColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ExtractedWidget(myColor: Color(0xFF1D1E33)),
                )
              ],
            ),
          ),
          Expanded(
            child: ExtractedWidget(myColor: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ExtractedWidget(myColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ExtractedWidget(myColor: Color(0xFF1D1E33)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExtractedWidget extends StatelessWidget {
  final Color myColor;

  ExtractedWidget({@required this.myColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: myColor, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
