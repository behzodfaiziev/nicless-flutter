import 'dart:io';

import 'package:file_picker/file_picker.dart';

abstract class IFilePickerService {
  Future<File?> pickFile({FileType? fileType, List<String>? allowedExtensions});

  Future<List<File>> pickMultipleFiles(
      {FileType? fileType, List<String>? allowedExtensions,});

  File? convertPathToFile(String? path) {
    if (path != null) {
      return File(path);
    } else {
      return null;
    }
  }
}
