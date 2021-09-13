class CertificateModel {
  static const List<String> _logos = [
    'assets/icons/harvard.png',
    'assets/icons/google.png',
    'assets/icons/duke.jpeg'
  ];

  static const List<String> _names = [
    'CS50\'s Introduction to Computer Science',
    'Google IT Automation with Python Specialization',
    'Java Programming: Solving Problems with Software'
  ];

  static const List<String> _organizations = [
    'Harvard University',
    'Google',
    'Duke University'
  ];

  static const List<String> _time = ['Dec 2020', 'Jun 2021', 'July 2021'];

  static const List<String> _urls = [
    'https://certificates.cs50.io/6b98691d-f013-407a-87c0-430a999e60d1.pdf?size=letter',
    'https://www.coursera.org/account/accomplishments/specialization/certificate/XNFJTKJCZTST',
    'https://www.coursera.org/account/accomplishments/certificate/869N4DU2XMRJ'
  ];

  static List<String> get getLogos => _logos;

  static List<String> get getNames => _names;

  static List<String> get getOrgs => _organizations;

  static List<String> get getTime => _time;

  static List<String> get getUrls => _urls;
}
