export 'MyAppBar.dart';

import 'package:flutter/material.dart';
import 'section.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Section> sections;
  final Section current;
  final buttonAction;

  MyAppBar(this.sections, this.current, this.buttonAction);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // Large device
      if (constraints.maxWidth > 600) {
        return AppBar(
          actions: <Widget>[
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
          ],
          leading: Container(),
          backgroundColor: Colors.cyan,
        );
      } else {
        // Small device
        return AppBar(
          title: Text(current.getName),
          backgroundColor: Colors.cyan,
        );
      }
    });
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
