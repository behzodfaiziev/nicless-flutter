abstract class INetworkModel<T> {
  const INetworkModel();

  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
