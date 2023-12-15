import 'dart:io';

abstract class IFilePickerManager {
  Future<File?> pickImage();

  Future<List<File>> pickMultipleImages();

  Future<File?> pickVideo();

  Future<List<File>> pickMultipleVideos();

  Future<File?> pickAudio();

  Future<File?> pickDocument();

  Future<List<File>> pickMultipleDocuments();

}
