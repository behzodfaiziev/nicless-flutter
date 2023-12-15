enum PlatformOSEnum { android, ios, web }

extension PlatformOSEnumExtension on PlatformOSEnum {
  String get platformName {
    switch (this) {
      case PlatformOSEnum.android:
        return 'android';
      case PlatformOSEnum.ios:
        return 'ios';
      case PlatformOSEnum.web:
        return 'web';
      default:
        return 'unknown';
    }
  }
}
