import '../../../../core/utility/typedef.dart';

abstract class GeminiRepo {
  Result<Stream<String>> sendTextToGemini(String text);
}
