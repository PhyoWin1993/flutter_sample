import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    debugPrint("Search bt");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text("Hellow scea"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("Icon Tapped.")),
          new IconButton(
              icon: new Icon(Icons.search), onPressed: () => _onPress()),
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      // add body
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "Heoolow ",
              style: new TextStyle(
                fontSize: 14.5,
                color: Colors.deepOrange,
                fontWeight: FontWeight.w400,
              ),
            ),

            //
            new InkWell(
              child: new Text("button "),
              onTap: () => debugPrint("Button Tapped"),
            )
          ],
        ),
      ),
      //
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going up!',
        child: new Icon(Icons.call_missed),
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.add), label: "Hay"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.print), label: "Hay"),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.call_missed), label: "Hay"),
        ],
        onTap: (int i) => debugPrint(" result is $i"),
      ),
    );
  }
}
