import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'fcm_token.g.dart';

@JsonSerializable()
class FcmToken extends INetworkModel<FcmToken> with EquatableMixin {
  const FcmToken({
    this.fcmToken,
    this.platform,
  });

  factory FcmToken.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenFromJson(json);

  final String? fcmToken;
  final String? platform;

  @override
  FcmToken fromJson(Map<String, dynamic> json) => FcmToken.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$FcmTokenToJson(this);

  @override
  List<Object?> get props => [fcmToken, platform];

  FcmToken copyWith({
    String? fcmToken,
    String? platform,
  }) {
    return FcmToken(
      fcmToken: fcmToken ?? this.fcmToken,
      platform: platform ?? this.platform,
    );
  }
}
