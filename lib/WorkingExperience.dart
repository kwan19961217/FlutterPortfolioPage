export 'WorkingExperience.dart';
import 'package:flutter/material.dart';
import 'MyTimeLine.dart';

class WorkingExperience extends StatelessWidget {
  static const List<String> _times = ['July 2019', 'April 2020', 'May 2021'];
  static const List<String> _contents = [
    'Graduation',
    'Business Analyst (BOCHK)',
    'Switched to Developer Team'
  ];
  static const List<String> _subtitle = [
    'The Chinese University of Hong Kong',
    '- Faster Payment System\n- FPS Merchant Payment Scheme\n- Account Number Checking\n- Notification Templates',
    '- New Reports\n- Existing Reports Modifications\n- Internal UI\n- Bugs Fixing'
  ];
  const WorkingExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.symmetric(vertical: constraints.maxHeight * 0.025),
          child: ListView(
            children: [
              for (int i = 0; i < _times.length; i++)
                MyTimeLine((i + 1) % 2 == 0 ? 'right' : 'left', _times[i],
                    _contents[i], _subtitle[i])
            ],
          ));
    });
  }
}
