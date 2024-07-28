import 'package:vexana/vexana.dart';

enum AppRequestType {
  get,
  post,
  delete,
  put,
  patch,
}

extension AppRequestTypeExtension on AppRequestType {
  RequestType get toRequestType {
    switch (this) {
      case AppRequestType.get:
        return RequestType.GET;
      case AppRequestType.post:
        return RequestType.POST;
      case AppRequestType.delete:
        return RequestType.DELETE;
      case AppRequestType.put:
        return RequestType.PUT;
      case AppRequestType.patch:
        return RequestType.PATCH;
    }
  }
}
