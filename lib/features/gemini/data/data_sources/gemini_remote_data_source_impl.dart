import 'package:google_generative_ai/google_generative_ai.dart';

import 'gemini_remote_data_source.dart';

class GeminiRemoteDataSourceImpl extends GeminiRemoteDataSource {
  GeminiRemoteDataSourceImpl({required GenerativeModel generativeModel})
      : _generativeModel = generativeModel;

  final GenerativeModel _generativeModel;

  @override
  Stream<GenerateContentResponse> sendTextToGemini(String text) {
    final Content content = Content.text(text);
    return _generativeModel.generateContentStream([content]);
  }
}
