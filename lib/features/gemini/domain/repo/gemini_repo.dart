import 'package:google_generative_ai/google_generative_ai.dart';

import '../../../../core/utility/typedef.dart';

abstract class GeminiRepo {
  Result<Stream<GenerateContentResponse>> sendTextToGemini(String text);
}
