import 'dart:io';

import 'package:file_picker/file_picker.dart';

import 'i_file_picker_manager.dart';
import 'service/i_file_picker_service.dart';

class FilePickerManager extends IFilePickerManager {
  FilePickerManager({required IFilePickerService filePickerService}) {
    /// Injecting the [FilePickerService] dependency
    _filePickerService = filePickerService;
  }

  late final IFilePickerService _filePickerService;

  @override
  Future<File?> pickImage() async {
    return _filePickerService.pickFile(fileType: FileType.image);
  }

  @override
  Future<List<File>> pickMultipleImages() async {
    return _filePickerService.pickMultipleFiles(fileType: FileType.image);
  }

  @override
  Future<File?> pickVideo() async {
    return _filePickerService.pickFile(fileType: FileType.video);
  }

  @override
  Future<List<File>> pickMultipleVideos() async {
    return _filePickerService.pickMultipleFiles(fileType: FileType.video);
  }

  @override
  Future<File?> pickAudio() async {
    return _filePickerService.pickFile(fileType: FileType.audio);
  }

  @override
  Future<File?> pickDocument() async {
    return _filePickerService.pickFile(
      fileType: FileType.any,
    );
  }

  @override
  Future<List<File>> pickMultipleDocuments() async {
    return _filePickerService.pickMultipleFiles(
      fileType: FileType.any,
    );
  }
}
