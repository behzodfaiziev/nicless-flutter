import '../interface/i_network_model.dart';

class EmptyModel extends INetworkModel<EmptyModel> {
  EmptyModel({this.name});

  EmptyModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return;
    }
    name = json['name'] as String?;
  }

  String? name;

  @override
  Map<String, Object> toJson() {
    final data = <String, Object>{};
    data['name'] = name ?? '';
    return data;
  }

  @override
  EmptyModel fromJson(Map<String, dynamic>? json) {
    return EmptyModel.fromJson(json);
  }

}
