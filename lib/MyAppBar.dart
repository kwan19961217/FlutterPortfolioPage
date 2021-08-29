export 'MyAppBar.dart';

import 'package:flutter/material.dart';
import 'section.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Section> sections;
  final buttonAction;

  MyAppBar(this.sections, this.buttonAction);

  @override
  Widget build(BuildContext context) {
    return AppBar(actions: <Widget>[
      for (Section section in sections)
        Padding(
          padding: new EdgeInsets.all(20.0),
          child: TextButton(
            onPressed: () {
              buttonAction(section);
            },
            child: Text(section.getName),
            style: TextButton.styleFrom(primary: Colors.white),
          ),
        )
    ]);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
