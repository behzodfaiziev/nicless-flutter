import 'dart:io';
import 'package:file_picker/file_picker.dart';

import 'i_file_picker_service.dart';

class FilePickerService extends IFilePickerService {
  FilePickerService();

  @override
  Future<File?> pickFile(
      {FileType? fileType, List<String>? allowedExtensions,}) async {
    try {
      final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: fileType ?? FileType.any,
        allowedExtensions: allowedExtensions,
      );

      return convertPathToFile(result?.files.single.path);
    } catch (e) {
      // await crashlyticsManager.sendACrash(
      //     error: e.toString(),
      //     stackTrace: StackTrace.current,
      //     reason: '_pickFile at file_picker_manager.dart ');
      return null;
    }
  }

  @override
  Future<List<File>> pickMultipleFiles({
    FileType? fileType,
    List<String>? allowedExtensions,
  }) async {
    try {
      final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: fileType ?? FileType.any,
        allowMultiple: true,
        allowedExtensions: allowedExtensions,
      );
      if (result != null) {
        final List<File> files =
            result.paths.map((path) => File(path!)).toList();
        return files;
      } else {
        return [];
      }
    } catch (e) {
      // await crashlyticsManager.sendACrash(
      //     error: e.toString(),
      //     stackTrace: StackTrace.current,
      //     reason: '_pickMultipleFiles at file_picker_manager.dart ');
      return [];
    }
  }
}
