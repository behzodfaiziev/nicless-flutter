extension CustomStringExtension on String {
  bool get isValidEmail => contains(RegExp('')) || false;

  String capitalize() {
    if (isEmpty) return '';
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

}
