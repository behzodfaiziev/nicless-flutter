import '../interface/i_error_model.dart';
import '../interface/i_network_model.dart';

class ErrorModel<T extends INetworkModel<T>?> extends IErrorModel<T> {
  ErrorModel({super.statusCode, super.description, super.model});

  ErrorModel<T> copyWith({
    int? statusCode,
    String? description,
    T? model,
  }) {
    return ErrorModel<T>(
      statusCode: statusCode ?? this.statusCode,
      description: description ?? this.description,
      model: model ?? this.model,
    );
  }
}
