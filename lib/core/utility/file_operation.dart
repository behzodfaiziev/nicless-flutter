import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

/// File operations for the application
/// This class is a singleton class
/// Usage:
/// ```dart
/// final FileOperation fileOperation = FileOperation.instance;
/// ```
@immutable
final class FileOperation {
  static FileOperation? _instance;

  static FileOperation get instance {
    return _instance ??= const FileOperation._init();
  }

  const FileOperation._init();

  /// Creates a sub directory in the given path
  /// Arguments:
  /// path: Path of the directory to be created
  /// Returns: Path of the created directory
  /// If the directory is already created, returns the path of the directory
  Future<String?> createSubDirectory(String path) async {
    try {
      final Directory directory = await _fileDirectory(path);

      if (!directory.existsSync()) {
        directory.createSync(recursive: true);
      }
      return directory.path;
    } catch (e) {
      return null;
    }
  }

  /// Removes a directory from the given path
  /// Arguments:
  /// path: Path of the directory to be removed
  /// Returns: True if the directory is removed, false otherwise
  Future<bool> removeDirectory(String path) async {
    try {
      final Directory directory = await _fileDirectory(path);
      if (directory.existsSync()) {
        directory.deleteSync();
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Returns a [Directory] object for the given path.
  Future<Directory> _fileDirectory(String path) async {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();

    return Directory('${appDocumentsDir.path}/$path');
  }
}
