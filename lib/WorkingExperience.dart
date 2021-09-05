export 'WorkingExperience.dart';
import 'package:flutter/material.dart';

class WorkingExperience extends StatelessWidget {
  const WorkingExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Text('Working experience');
    });
  }
}
