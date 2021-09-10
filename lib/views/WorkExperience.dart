import 'package:flutter/material.dart';
import 'package:portfolio/models/WorkExperienceModel.dart';
import 'MyTimeLine.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.025),
          child: ListView(
            children: [
              for (int i = 0; i < WorkExperienceModel.getTimes.length; i++)
                MyTimeLine(
                    i.isEven ? 'left' : 'right',
                    WorkExperienceModel.getTimes[i],
                    WorkExperienceModel.getContents[i],
                    WorkExperienceModel.getSub[i])
            ],
          ));
    });
  }
}
