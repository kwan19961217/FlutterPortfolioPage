export 'Education.dart';
import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  static const List<String> _logos = [
    'assets/icons/cuhk_small.png',
    'assets/icons/westconn_small.jpeg',
  ];
  static const List<String> _schools = [
    'The Chinese University of Hong Kong',
    'Western Connecticut State University',
  ];
  static const List<String> _details = [
    'Sep 2015 - Jul 2019\nDegree: Bachelor of Social Science in Economics\nHonours: Second Upper Class',
    'Jan 2018 - May 2018\nInternational Student Exchange Programme',
  ];

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
              for (int i = 0; i < _schools.length; i++)
                Column(children: [
                  ListTile(
                      leading: Image.asset(_logos[i], fit: BoxFit.contain),
                      title: Text(
                        _schools[i],
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyan,
                            fontFamily: 'Poppins'),
                      ),
                      subtitle: Text(_details[i],
                          style:
                              TextStyle(fontSize: 16, fontFamily: 'Poppins'))),
                  Divider()
                ]),
            ],
          ));
    });
  }
}
