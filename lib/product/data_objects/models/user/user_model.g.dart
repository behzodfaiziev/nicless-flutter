// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      fullName: json['fullName'] as String?,
      role: json['role'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bio: json['bio'] as String?,
      gender: json['gender'] as String?,
      age: (json['age'] as num?)?.toInt(),
      mass: json['mass'] == null
          ? null
          : Mass.fromJson(json['mass'] as Map<String, dynamic>),
      medication: json['medication'] == null
          ? null
          : Medication.fromJson(json['medication'] as Map<String, dynamic>),
      goal: json['goal'] == null
          ? null
          : Goal.fromJson(json['goal'] as Map<String, dynamic>),
      smokingHistory: json['smokingHistory'] == null
          ? null
          : SmokingHistory.fromJson(
              json['smokingHistory'] as Map<String, dynamic>),
      mobileNumber: json['mobileNumber'] as String?,
      avatar: json['avatar'] as String?,
      isOnboardingActive: json['isOnboardingActive'] as bool?,
      isFirstTime: json['isFirstTime'] as bool?,
      isTotallyVerified: json['isTotallyVerified'] as bool?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isMobileNumberVerified: json['isMobileNumberVerified'] as bool?,
      timeZone: json['timeZone'] as String?,
      dateFormat: json['dateFormat'] as String?,
      googleId: json['googleId'] as String?,
      country: json['country'] as String?,
      facebook: json['facebook'] as String?,
      instagram: json['instagram'] as String?,
      twitter: json['twitter'] as String?,
      fcmToken: json['fcmToken'] == null
          ? null
          : FcmToken.fromJson(json['fcmToken'] as Map<String, dynamic>),
      lastSignIn: json['lastSignIn'] as String?,
      refreshToken: json['refreshToken'] as String?,
      lastIp: json['lastIp'] as String?,
      blocked: json['blocked'] as bool?,
      blockReason: json['blockReason'] as String?,
      blockedAt: json['blockedAt'] as String?,
      deletionDate: json['deletionDate'] as String?,
      dailyPuffLimit: (json['dailyPuffLimit'] as num?)?.toInt(),
      dailyCigaretteLimit: (json['dailyCigaretteLimit'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'fullName': instance.fullName,
      'role': instance.role,
      'permissions': instance.permissions,
      'bio': instance.bio,
      'gender': instance.gender,
      'age': instance.age,
      'mass': instance.mass,
      'medication': instance.medication,
      'goal': instance.goal,
      'smokingHistory': instance.smokingHistory,
      'mobileNumber': instance.mobileNumber,
      'avatar': instance.avatar,
      'isOnboardingActive': instance.isOnboardingActive,
      'isFirstTime': instance.isFirstTime,
      'isTotallyVerified': instance.isTotallyVerified,
      'isEmailVerified': instance.isEmailVerified,
      'isMobileNumberVerified': instance.isMobileNumberVerified,
      'timeZone': instance.timeZone,
      'dateFormat': instance.dateFormat,
      'googleId': instance.googleId,
      'country': instance.country,
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'twitter': instance.twitter,
      'fcmToken': instance.fcmToken,
      'lastSignIn': instance.lastSignIn,
      'refreshToken': instance.refreshToken,
      'lastIp': instance.lastIp,
      'blocked': instance.blocked,
      'blockReason': instance.blockReason,
      'blockedAt': instance.blockedAt,
      'deletionDate': instance.deletionDate,
      'dailyPuffLimit': instance.dailyPuffLimit,
      'dailyCigaretteLimit': instance.dailyCigaretteLimit,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
