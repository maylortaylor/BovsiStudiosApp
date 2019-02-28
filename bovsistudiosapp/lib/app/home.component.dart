import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomeComponent extends StatefulWidget {
  Widget child = new WebviewScaffold(
    url: "https://www.bovsistudios.com",
    // appBar: new AppBar(
    //   title: const Text('Maylor Taylor'),
    // ),
    withZoom: false,
    withLocalStorage: true,
    hidden: true,
    scrollBar: true,
    initialChild: Container(
      color: Colors.deepPurple,
      child: const Center(
        child: Text(
          'Waiting.....',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );

  HomeComponent({Key key, this.child}) : super(key: key);

  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: widget.child,
    );
  }
}
