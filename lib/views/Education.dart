import 'package:flutter/material.dart';
import 'package:portfolio/models/EducationModel.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.symmetric(
              vertical: constraints.maxHeight * 0.025,
              horizontal: constraints.maxWidth * 0.1),
          child: ListView(
            children: [
              for (int i = 0; i < EducationModel.getSchools.length; i++)
                Column(children: [
                  ListTile(
                      leading: Image.asset(EducationModel.getLogos[i],
                          fit: BoxFit.contain),
                      title: Text(
                        EducationModel.getSchools[i],
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyan,
                            fontFamily: 'Poppins'),
                      ),
                      subtitle: Text(EducationModel.getDetails[i],
                          style:
                              TextStyle(fontSize: 16, fontFamily: 'Poppins'))),
                  Divider()
                ]),
            ],
          ));
    });
  }
}
