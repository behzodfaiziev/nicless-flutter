import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

@immutable
final class DateTimeUtil {
  /// Possible formats: 'dd/MM/yyyy', 'dd/MM/yyyy HH:mm:ss', 'dd/MM/yyyy HH:mm'
  /// 'dd/MM/yyyy HH:mm:ss.SSS', 'dd/MM/yyyy HH:mm:ss.SSSZ',
  /// 'dd/MM/yyyy HH:mm:ss.SSSZZZZZ' and more
  String formattedDateFromString({
    required String dateString,
    String desiredFormat = 'dd/MM/yyyy',
    String locale = 'en_US',
  }) {
    final DateTime? dateTime = parseDateTime(dateTimeString: dateString);
    if (dateTime == null) return '';

    return DateFormat(desiredFormat, locale).format(dateTime);
  }

  DateTime? parseDateTime({
    String? dateTimeString,
    String? inputFormat = 'yyyy-MM-ddTHH:mm:ssZ',
  }) {
    try {
      if (dateTimeString == null || dateTimeString.isEmpty) {
        return null;
      }
      return DateFormat(inputFormat).parse(dateTimeString);
    } catch (e) {
      return null;
    }
  }

// TODO(bhz): add support for other languages
  String notificationTime(String? dateTimeString) {
    final DateTime? dateTime = parseDateTime(dateTimeString: dateTimeString);

    if (dateTime == null) return '';

    final DateTime now = DateTime.now();
    final Duration difference = now.difference(dateTime);

    if (difference.inDays > 7) {
      return DateFormat('dd/MM/yyyy').format(dateTime);
    }
    if (difference.inDays >= 1) {
      final String day = difference.inDays == 1 ? 'day' : 'days';
      return '${difference.inDays} $day ago';
    }
    if (difference.inHours >= 1) {
      final String hour = difference.inHours == 1 ? 'hour' : 'hours';
      return '${difference.inHours} $hour ago';
    }
    if (difference.inMinutes >= 1) {
      final String minute = difference.inMinutes == 1 ? 'minute' : 'minutes';
      return '${difference.inMinutes} $minute ago';
    }
    if (difference.inSeconds >= 1) {
      final String second = difference.inSeconds == 1 ? 'second' : 'seconds';
      return '${difference.inSeconds} $second ago';
    }
    return 'Now';
  }
}
