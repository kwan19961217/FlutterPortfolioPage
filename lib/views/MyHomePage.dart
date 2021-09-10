import 'package:flutter/material.dart';
import 'package:portfolio/models/UrlButtonModel.dart';

class MyHomePage extends StatelessWidget {
  final buttonAction;

  const MyHomePage({required this.buttonAction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: constraints.maxWidth * 0.1,
        ),
        child: ListView(
          children: [
            //Name
            Container(
                margin: EdgeInsets.only(
                    top: constraints.maxHeight * 0.1, bottom: 7),
                child: Text(
                  'Connor Kwan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Poppins'),
                )),

            //Title
            Container(
                child: Text(
              'Developer',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF676767),
                  fontFamily: 'Poppins'),
            )),

            //Description
            Container(
                margin: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.045),
                child: Text(
                  'A self motivated programmer who is learning Computer Science with MOOCs and university textbooks',
                  style: TextStyle(
                      fontSize: 18, color: Colors.grey, fontFamily: 'Poppins'),
                )),

            Container(
                margin: EdgeInsets.only(bottom: constraints.maxHeight * 0.05),
                child: Text(
                  'Skillsets: Java, Python, JavaScript, SQL, HTML5, CSS3',
                  style: TextStyle(
                      fontSize: 18, color: Colors.grey, fontFamily: 'Poppins'),
                )),

            //UrlButtons starts here
            Container(
                margin: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.05),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int i = 0; i < UrlButtonModel.getUrls.length; i++)
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                                color: Colors.cyan,
                                child: IconButton(
                                  icon: Image.asset(UrlButtonModel.getIcons[i]),
                                  iconSize: 32,
                                  onPressed: () =>
                                      buttonAction(UrlButtonModel.getUrls[i]),
                                ))),
                    ])),
          ],
        ),
      );
    });
  }
}
