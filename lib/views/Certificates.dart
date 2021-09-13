import 'package:flutter/material.dart';
import 'package:portfolio/models/CertificateModel.dart';
import 'package:portfolio/views/CertificateCard.dart';

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
          child: (() {
            //For small and middle screen
            if (constraints.maxWidth < 1200) {
              return ListView(children: [
                for (int i = 0; i < CertificateModel.getNames.length; i++)
                  //Use Center to avoid ListView expanding the sized box
                  CertificateCard(
                      CertificateModel.getLogos[i],
                      CertificateModel.getNames[i],
                      CertificateModel.getOrgs[i],
                      CertificateModel.getTime[i],
                      CertificateModel.getUrls[i],
                      buttonAction)
              ]);
            } else {
              //For large screen
              return ListView(children: [
                for (int i = 0; i < CertificateModel.getNames.length; i += 3)
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int j = i;
                            j < CertificateModel.getNames.length && j < i + 3;
                            j++)
                          CertificateCard(
                              CertificateModel.getLogos[j],
                              CertificateModel.getNames[j],
                              CertificateModel.getOrgs[j],
                              CertificateModel.getTime[j],
                              CertificateModel.getUrls[j],
                              buttonAction)
                      ])
              ]);
            }
          }()));
    });
  }
}
