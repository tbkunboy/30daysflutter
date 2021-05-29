import 'package:flutter/material.dart';

class FlashCards extends StatefulWidget {
  @override
  _FlashCardsState createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                height: 200,
                child: Card(
                    child: Center(
                  child: Text('Card Xin'),
                ))),
            Row(
              children: [
                OutlineButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_left),
                    label: Text('Prev')),
                OutlineButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_right),
                    label: Text('Next'))
              ],
            )
          ],
        )),
      ),
    );
  }
}
