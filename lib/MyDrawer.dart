export 'MyDrawer.dart';

import 'package:flutter/material.dart';
import 'section.dart';

class MyDrawer extends StatelessWidget {
  final List<Section> sections;
  final buttonAction;

  const MyDrawer(this.sections, this.buttonAction);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        for (Section section in sections)
          Padding(
              padding: new EdgeInsets.all(15.0),
              child: ListTile(
                leading: Icon(section.getIcon, color: Colors.cyan),
                title: Text(section.getName,
                    style: const TextStyle(
                        color: Colors.cyan,
                        fontFamily: 'Poppins',
                        fontSize: 19)),
                onTap: () {
                  buttonAction(section);
                  Navigator.pop(context);
                },
              ))
      ],
    ));
  }
}
