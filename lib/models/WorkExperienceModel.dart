class WorkExperienceModel {
  static const List<String> _times = ['July 2019', 'April 2020', 'May 2021'];
  static const List<String> _contents = [
    'Graduation',
    'Business Analyst (BOCHK)',
    'Switched to Developer Team'
  ];
  static const List<String> _subtitles = [
    'The Chinese University of Hong Kong',
    '- Faster Payment System\n- FPS Merchant Payment Scheme\n- Account Number Checking\n- Notification Templates',
    '- New Data Transfer Reports\n- Existing Reports Modifications\n- Internal UI\n- Bug Fixing'
  ];

  static List<String> get getTimes => _times;

  static List<String> get getContents => _contents;

  static List<String> get getSub => _subtitles;
}
