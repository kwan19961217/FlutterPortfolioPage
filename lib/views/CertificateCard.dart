import 'package:flutter/material.dart';

class CertificateCard extends StatelessWidget {
  final String _logo;
  final String _name;
  final String _org;
  final String _time;
  final String _url;
  final _buttonAction;

  const CertificateCard(this._logo, this._name, this._org, this._time,
      this._url, this._buttonAction);

  @override
  Widget build(BuildContext context) {
    //Use Center to avoid ListView expanding the sized box
    return Center(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 35),
            child: SizedBox(
                width: 325,
                height: 350,
                child: Card(
                    elevation: 10.0,
                    child: Column(children: [
                      Spacer(flex: 1),
                      Image.asset(_logo),
                      Spacer(flex: 1),
                      Text(
                        _name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        _org,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Colors.grey),
                      ),
                      Text(
                        _time,
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
                                      onPressed: () => _buttonAction(_url),
                                      child: Text('View Certificate',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                          )))))),
                      Spacer(flex: 2),
                    ])))));
  }
}
