import 'package:url_launcher/url_launcher.dart';

class ExerciseImagesWebsiteController {
  static final Uri _exerciseImagesWebsiteUrl = Uri.parse(
    'https://strengthlevel.es',
  );

  static Future<void> openExerciseImagesWebsiteUrl() async {
    await launchUrl(_exerciseImagesWebsiteUrl);
  }
}
