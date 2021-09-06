export 'MyTimeLine.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLine extends StatelessWidget {
  final String _direction;
  final String _time;
  final String _content;
  final String _subtitle;
  MyTimeLine(this._direction, this._time, this._content, this._subtitle);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      beforeLineStyle: LineStyle(color: Colors.cyan),
      afterLineStyle: LineStyle(color: Colors.cyan),
      indicatorStyle: const IndicatorStyle(color: Colors.cyan),
      //time if odd indexed
      //else content
      startChild: Container(
          alignment: Alignment.centerRight,
          constraints: const BoxConstraints(
            minHeight: 150,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: _direction == 'left'
              ? Text(
                  _time,
                  style: TextStyle(
                      fontSize: 18, color: Colors.cyan, fontFamily: 'Poppins'),
                )
              : SizedBox(
                  width: 300,
                  child: ListTile(
                      title: Text(
                        _content,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyan,
                            fontFamily: 'Poppins'),
                      ),
                      subtitle: Text(_subtitle,
                          style: TextStyle(fontFamily: 'Poppins'))))),
      alignment: TimelineAlign.center,
      //time if even indexed
      //else content
      endChild: Container(
          alignment: Alignment.centerLeft,
          constraints: const BoxConstraints(minHeight: 150),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: _direction == 'left'
              ? SizedBox(
                  width: 300,
                  child: ListTile(
                      title: Text(
                        _content,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.cyan,
                            fontFamily: 'Poppins'),
                      ),
                      subtitle: Text(_subtitle,
                          style: TextStyle(fontFamily: 'Poppins'))))
              : Text(
                  _time,
                  style: TextStyle(
                      fontSize: 18, color: Colors.cyan, fontFamily: 'Poppins'),
                )),
    );
  }
}
