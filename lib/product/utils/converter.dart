class CustomConverter {
  static String capacity(double value) {
    if (value < 1000) {
      return value.round().toString();
    } else if (value < 100000) {
      return '${(value / 1000).round()}.000';
    } else {
      return '';
    }
  }
}
