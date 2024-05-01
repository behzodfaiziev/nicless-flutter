import 'package:google_generative_ai/google_generative_ai.dart';

import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../repo/gemini_repo.dart';

class SendTextToGemini
    extends UsecaseWithParamsStream<Stream<GenerateContentResponse>, String> {
  const SendTextToGemini(this._repo);

  final GeminiRepo _repo;

  @override
  Result<Stream<GenerateContentResponse>> call(String params) =>
      _repo.sendTextToGemini(params);
}
