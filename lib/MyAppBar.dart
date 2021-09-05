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
      if (constraints.maxWidth > 800) {
        return AppBar(
          actions: <Widget>[
            for (Section section in sections)
              Padding(
                  padding: new EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: TextButton(
                      onPressed: () {
                        buttonAction(section);
                      },
                      child: Text(section.getName,
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 15)),
                      style: TextButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                    ),
                  ))
          ],
          leading: Container(),
          backgroundColor: Colors.white,
          elevation: 0,
        );
      } else {
        // Small device
        return AppBar(
          title: Text(current.getName,
              style: TextStyle(
                  color: Colors.cyan, fontFamily: 'Poppins', fontSize: 22)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.cyan),
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: null,
              );
            },
          ),
        );
      }
    });
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
