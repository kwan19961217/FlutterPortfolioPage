import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'section.dart';
import 'MyAppBar.dart';
import 'MyDrawer.dart';
import 'MyHomePage.dart';
import 'WorkingExperience.dart';

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
    Section(
      'Working Experience',
      Icons.work,
    ),
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

  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(widget.sections, _selectedSection, changePage),
      body: (() {
        switch (_selectedSection.getName) {
          case "Home":
            return MyHomePage(launchURL);
          case "Working Experience":
            return WorkingExperience();
        }
      }()),
      drawer: MyDrawer(widget.sections, changePage),
      backgroundColor: Colors.white,
    );
  }
}
