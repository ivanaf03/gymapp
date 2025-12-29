import 'package:url_launcher/url_launcher.dart';

class SupportGithubButtonController {
  static final Uri _githubUrl = Uri.parse(
    'https://github.com/ivanaf03?tab=repositories',
  );

  static Future<void> openGithubUrl() async {
    await launchUrl(_githubUrl);
  }
}
