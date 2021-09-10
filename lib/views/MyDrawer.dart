import 'package:flutter/material.dart';
import 'package:portfolio/models/Sections.dart';

class MyDrawer extends StatelessWidget {
  final buttonAction;

  const MyDrawer({required this.buttonAction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        for (Section section in Sections.getSections)
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
