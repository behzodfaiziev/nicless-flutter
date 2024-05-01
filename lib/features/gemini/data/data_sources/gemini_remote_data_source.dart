import 'package:google_generative_ai/google_generative_ai.dart';

abstract class GeminiRemoteDataSource {
  Stream<GenerateContentResponse> sendTextToGemini(String text);
}
