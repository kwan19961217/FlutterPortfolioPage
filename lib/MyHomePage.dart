export 'MyHomePage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final buttonAction;

  const MyHomePage(this.buttonAction);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // Large device
      if (constraints.maxWidth > 750) {
        return Container(
          margin: EdgeInsets.symmetric(
              horizontal: 40.0, vertical: constraints.maxHeight * 0.2),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                    'Lorem ipsum',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                    'Lorem ipsum',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        );
      } else {
        return Container(
          margin: EdgeInsets.symmetric(
              horizontal: 50.0, vertical: constraints.maxHeight * 0.1),
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
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Developer',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF676767),
                        fontFamily: 'Poppins'),
                  )),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Self motivated programmer who is learning Computer Science with MOOCs and university textbooks',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontFamily: 'Poppins'),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Text(
                    'Skillsets: Java, Python, JavaScript, SQL, HTML5, CSS3',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontFamily: 'Poppins'),
                  )),
              Container(
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
                  ]))
            ],
          ),
        );
      }
    });
  }
}
