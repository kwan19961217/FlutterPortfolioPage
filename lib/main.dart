import 'package:flutter/material.dart';
import 'section.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  final List<Section> sections = [
    Section('Home'),
    Section('Working Experience'),
    Section('Education'),
    Section('Certificates'),
  ];

  MainPage({Key? key, sections}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Section _selectedSection;

  @override
  void initState() {
    setState(() {
      _selectedSection = widget.sections[0];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        for (Section section in widget.sections)
          Padding(
            padding: new EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  _selectedSection = section;
                });
              },
              child: Text(section.name),
              style: TextButton.styleFrom(primary: Colors.white),
            ),
          )
      ]),
      body: Center(child: Text(_selectedSection.name)),
    );
  }
}
