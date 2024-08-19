import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'fcm_token.dart';
import 'goal.dart';
import 'mass.dart';
import 'medication.dart';
import 'smoking_history.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel with EquatableMixin {
  const UserModel({
    this.id,
    this.email,
    this.password,
    this.fullName,
    this.role,
    this.permissions,
    this.bio,
    this.gender,
    this.age,
    this.mass,
    this.medication,
    this.goal,
    this.smokingHistory,
    this.mobileNumber,
    this.avatar,
    this.isOnboardingActive,
    this.isFirstTime,
    this.isTotallyVerified,
    this.isEmailVerified,
    this.isMobileNumberVerified,
    this.timeZone,
    this.dateFormat,
    this.googleId,
    this.country,
    this.facebook,
    this.instagram,
    this.twitter,
    this.fcmToken,
    this.lastSignIn,
    this.refreshToken,
    this.lastIp,
    this.blocked,
    this.blockReason,
    this.blockedAt,
    this.deletionDate,
    this.dailyPuffLimit,
    this.dailyCigaretteLimit,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  final String? id;
  final String? email;
  final String? password;
  final String? fullName;
  final String? role;
  final List<String>? permissions;
  final String? bio;
  final String? gender;
  final int? age;
  final Mass? mass;
  final Medication? medication;
  final Goal? goal;
  final SmokingHistory? smokingHistory;
  final String? mobileNumber;
  final String? avatar;
  final bool? isOnboardingActive;
  final bool? isFirstTime;
  final bool? isTotallyVerified;
  final bool? isEmailVerified;
  final bool? isMobileNumberVerified;
  final String? timeZone;
  final String? dateFormat;
  final String? googleId;
  final String? country;
  final String? facebook;
  final String? instagram;
  final String? twitter;
  final FcmToken? fcmToken;
  final String? lastSignIn;
  final String? refreshToken;
  final String? lastIp;
  final bool? blocked;
  final String? blockReason;
  final String? blockedAt;
  final String? deletionDate;
  final int? dailyPuffLimit;
  final int? dailyCigaretteLimit;
  final String? createdAt;
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        email,
        password,
        fullName,
        role,
        permissions,
        bio,
        gender,
        age,
        mass,
        medication,
        goal,
        smokingHistory,
        mobileNumber,
        avatar,
        isOnboardingActive,
        isFirstTime,
        isTotallyVerified,
        isEmailVerified,
        isMobileNumberVerified,
        timeZone,
        dateFormat,
        googleId,
        country,
        facebook,
        instagram,
        twitter,
        fcmToken,
        lastSignIn,
        refreshToken,
        lastIp,
        blocked,
        blockReason,
        blockedAt,
        deletionDate,
        dailyPuffLimit,
        dailyCigaretteLimit,
        createdAt,
        updatedAt,
      ];

  UserModel copyWith({
    String? id,
    String? email,
    String? password,
    String? fullName,
    String? role,
    List<String>? permissions,
    String? bio,
    String? gender,
    int? age,
    Mass? mass,
    Medication? medication,
    Goal? goal,
    SmokingHistory? smokingHistory,
    String? mobileNumber,
    String? avatar,
    bool? isOnboardingActive,
    bool? isFirstTime,
    bool? isTotallyVerified,
    bool? isEmailVerified,
    bool? isMobileNumberVerified,
    String? timeZone,
    String? dateFormat,
    String? googleId,
    String? country,
    String? facebook,
    String? instagram,
    String? twitter,
    FcmToken? fcmToken,
    String? lastSignIn,
    String? refreshToken,
    String? lastIp,
    bool? blocked,
    String? blockReason,
    String? blockedAt,
    String? deletionDate,
    int? dailyPuffLimit,
    int? dailyCigaretteLimit,
    String? createdAt,
    String? updatedAt,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
      fullName: fullName ?? this.fullName,
      role: role ?? this.role,
      permissions: permissions ?? this.permissions,
      bio: bio ?? this.bio,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      mass: mass ?? this.mass,
      medication: medication ?? this.medication,
      goal: goal ?? this.goal,
      smokingHistory: smokingHistory ?? this.smokingHistory,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      avatar: avatar ?? this.avatar,
      isOnboardingActive: isOnboardingActive ?? this.isOnboardingActive,
      isFirstTime: isFirstTime ?? this.isFirstTime,
      isTotallyVerified: isTotallyVerified ?? this.isTotallyVerified,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      isMobileNumberVerified:
          isMobileNumberVerified ?? this.isMobileNumberVerified,
      timeZone: timeZone ?? this.timeZone,
      dateFormat: dateFormat ?? this.dateFormat,
      googleId: googleId ?? this.googleId,
      country: country ?? this.country,
      facebook: facebook ?? this.facebook,
      instagram: instagram ?? this.instagram,
      twitter: twitter ?? this.twitter,
      fcmToken: fcmToken ?? this.fcmToken,
      lastSignIn: lastSignIn ?? this.lastSignIn,
      refreshToken: refreshToken ?? this.refreshToken,
      lastIp: lastIp ?? this.lastIp,
      blocked: blocked ?? this.blocked,
      blockReason: blockReason ?? this.blockReason,
      blockedAt: blockedAt ?? this.blockedAt,
      deletionDate: deletionDate ?? this.deletionDate,
      dailyPuffLimit: dailyPuffLimit ?? this.dailyPuffLimit,
      dailyCigaretteLimit: dailyCigaretteLimit ?? this.dailyCigaretteLimit,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
