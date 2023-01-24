import 'package:flimer/flimer.dart';

abstract class FileRepository {
  Future<String> upload(String bearerToken, {required XFile file});
}
