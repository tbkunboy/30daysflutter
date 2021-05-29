import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FontScale extends StatefulWidget {
  @override
  _FontScaleState createState() => _FontScaleState();
}

class _FontScaleState extends State<FontScale> {
  double _fontSize = 40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.done,
              style: TextStyle(fontSize: _fontSize),
              maxLines: null,
            ),
          ),
          Slider(
            value: _fontSize,
            onChanged: (newSize) {
              setState(() => _fontSize = newSize);
            },
            min: 30,
            max: 200,
          )
        ],
      )),
    );
  }
}
