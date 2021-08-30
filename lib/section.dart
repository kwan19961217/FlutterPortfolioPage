export 'section.dart';
import 'package:flutter/material.dart';

class Section {
  final String _name;
  final IconData _sectionIcon;

  Section(this._name, this._sectionIcon);

  String get getName {
    return _name;
  }

  IconData get getIcon {
    return _sectionIcon;
  }
}
