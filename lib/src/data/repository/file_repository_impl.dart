import 'dart:io';

import 'package:flimer/flimer.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

class FileRepositoryImpl implements FileRepository {
  FileRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<String> upload(String bearerToken, {required XFile file}) async {
    return await _apiService.uploadFile(
      bearerToken: bearerToken,
      file: File(file.path),
    );
  }
}
