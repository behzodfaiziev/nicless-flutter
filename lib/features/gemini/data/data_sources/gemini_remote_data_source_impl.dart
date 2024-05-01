import 'package:google_generative_ai/google_generative_ai.dart';

import 'gemini_remote_data_source.dart';

class GeminiRemoteDataSourceImpl extends GeminiRemoteDataSource {
  GeminiRemoteDataSourceImpl({required GenerativeModel generativeModel})
      : _generativeModel = generativeModel;

  final GenerativeModel _generativeModel;

  @override
  Stream<String> sendTextToGemini(String text) {
    final Content content = Content.text(text);
    return _generativeModel.generateContentStream([content]).map((response) {
      return response.candidates.first.content.parts.map((part) {
        if (part is TextPart) {
          return part.text;
        }
      }).join(' ');
    });
  }
}
