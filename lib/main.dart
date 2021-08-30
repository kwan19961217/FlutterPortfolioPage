import 'package:flutter/material.dart';
import 'section.dart';
import 'MyAppBar.dart';
import 'MyDrawer.dart';

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
    Section('Home', Icons.home),
    Section('Working Experience', Icons.work),
    Section('Education', Icons.menu_book),
    Section('Certificates', Icons.badge),
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

  void changePage(Section section) {
    setState(() {
      _selectedSection = section;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(widget.sections, _selectedSection, changePage),
      body: Center(child: Text(_selectedSection.getName)),
      drawer: MyDrawer(widget.sections, changePage),
    );
  }
}
