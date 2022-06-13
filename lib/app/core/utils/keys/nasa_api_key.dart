import 'package:flutter_dotenv/flutter_dotenv.dart';

class NasaApiKey {
  static String apiKey = dotenv.env['nasaApiKey'] ?? '';
}
