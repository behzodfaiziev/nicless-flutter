import 'package:net_kit/net_kit.dart';

enum AppRequestType {
  get,
  post,
  delete,
  put,
  patch,
}

extension AppRequestTypeExtension on AppRequestType {
  RequestMethod get toRequestType {
    switch (this) {
      case AppRequestType.get:
        return RequestMethod.get;
      case AppRequestType.post:
        return RequestMethod.post;
      case AppRequestType.delete:
        return RequestMethod.delete;
      case AppRequestType.put:
        return RequestMethod.put;
      case AppRequestType.patch:
        return RequestMethod.patch;
    }
  }
}
