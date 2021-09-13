import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/models/Sections.dart';
import 'package:portfolio/views/MyAppBar.dart';
import 'package:portfolio/views/MyDrawer.dart';
import 'package:portfolio/views/MyHomePage.dart';
import 'package:portfolio/views/WorkExperience.dart';
import 'package:portfolio/views/Education.dart';
import 'package:portfolio/views/Certificates.dart';

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
  MainPage({Key? key, sections}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Section _selectedSection;

  @override
  void initState() {
    setState(() {
      _selectedSection = Sections.getSections[0];
    });
    super.initState();
  }

  //Utility Functions
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
  //Functions end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(current: _selectedSection, buttonAction: changePage),
      body: (() {
        switch (_selectedSection.getName) {
          case "Home":
            return MyHomePage(buttonAction: launchURL);
          case "Work Experience":
            return WorkExperience();
          case "Education":
            return Education();
          case "Certificates":
            return Certificates(buttonAction: launchURL);
        }
      }()),
      drawer: MyDrawer(buttonAction: changePage),
      backgroundColor: Colors.white,
    );
  }
}
