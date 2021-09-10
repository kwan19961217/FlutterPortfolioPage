class EducationModel {
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

  static List<String> get getLogos => _logos;

  static List<String> get getSchools => _schools;

  static List<String> get getDetails => _details;
}
