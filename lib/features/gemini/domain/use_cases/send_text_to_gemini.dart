import '../../../../core/use_cases/use_cases.dart';
import '../../../../core/utility/typedef.dart';
import '../repo/gemini_repo.dart';

class SendTextToGemini extends UsecaseWithParamsStream<Stream<String>, String> {
  const SendTextToGemini(this._repo);

  final GeminiRepo _repo;

  @override
  Result<Stream<String>> call(String params) => _repo.sendTextToGemini(params);
}
