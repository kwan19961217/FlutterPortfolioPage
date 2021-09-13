import 'package:flutter/material.dart';
import 'package:portfolio/models/CertificateModel.dart';

class Certificates extends StatelessWidget {
  final buttonAction;

  const Certificates({required this.buttonAction, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.symmetric(
              vertical: constraints.maxHeight * 0.025,
              horizontal: constraints.maxWidth * 0.1),
          child: ListView(children: [
            for (int i = 0; i < CertificateModel.getNames.length; i++)
              //Use Center to avoid ListView expanding the sized box
              Center(
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 35),
                      child: SizedBox(
                          width: 325,
                          height: 350,
                          child: Card(
                              elevation: 10.0,
                              child: Column(children: [
                                Spacer(flex: 1),
                                Image.asset(CertificateModel.getLogos[i]),
                                Spacer(flex: 1),
                                Text(
                                  CertificateModel.getNames[i],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Text(
                                  CertificateModel.getOrgs[i],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey),
                                ),
                                Text(
                                  CertificateModel.getTime[i],
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey),
                                ),
                                Spacer(flex: 2),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                        color: Colors.cyan,
                                        child: Padding(
                                            padding: EdgeInsets.all(8),
                                            child: TextButton(
                                                onPressed: () => buttonAction(
                                                    CertificateModel
                                                        .getUrls[i]),
                                                child: Text('View Certificate',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins',
                                                      fontSize: 15,
                                                    )))))),
                                Spacer(flex: 2),
                              ])))))
          ]));
    });
  }
}
