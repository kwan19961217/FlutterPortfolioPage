import 'package:flutter/material.dart';

class Section {
  final String _name;
  final IconData _sectionIcon;

  const Section(this._name, this._sectionIcon);

  String get getName => _name;

  IconData get getIcon => _sectionIcon;
}

class Sections {
  static const List<Section> _sections = [
    Section('Home', Icons.home),
    Section('Work Experience', Icons.work),
    Section('Education', Icons.menu_book),
    Section('Certificates', Icons.badge),
  ];

  static List<Section> get getSections => _sections;
}
