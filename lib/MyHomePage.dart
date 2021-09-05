export 'MyHomePage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final buttonAction;

  const MyHomePage(this.buttonAction);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: constraints.maxWidth * 0.1,
            vertical: constraints.maxHeight * 0.1),
        child: ListView(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(vertical: 7.0),
                child: Text(
                  'Connor Kwan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Poppins'),
                )),
            Container(
                child: Text(
              'Developer',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF676767),
                  fontFamily: 'Poppins'),
            )),
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
            Container(
                margin: EdgeInsets.symmetric(
                    vertical: constraints.maxHeight * 0.05),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                              color: Colors.cyan,
                              child: IconButton(
                                icon: Image.asset('assets/icons/github.png'),
                                iconSize: 32,
                                onPressed: () => buttonAction(
                                    'https://github.com/kwan19961217'),
                              ))),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                              color: Colors.cyan,
                              child: IconButton(
                                icon: Image.asset('assets/icons/linkedin.png'),
                                iconSize: 32,
                                onPressed: () => buttonAction(
                                    'https://www.linkedin.com/in/tsz-hong-kwan-4a6522194/'),
                              )))
                    ])),
          ],
        ),
      );
    });
  }
}
