import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de pessoas",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/higurashi.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: $_count!",
              style: TextStyle(color: Colors.pink),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _count++;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _count--;
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Pode entrar",
              style: TextStyle(color: Colors.blue, fontSize: 30),
            )
          ],
        )
      ],
    );
  }
}
