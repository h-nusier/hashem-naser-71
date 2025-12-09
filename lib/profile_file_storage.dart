import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class ProfileFileStorage {
  static const String _fileName = 'profile_data.json';

  Future<File> _getProfileFile() async {
    final dir = await getApplicationDocumentsDirectory();
    final path = '${dir.path}/$_fileName';
    return File(path);
  }

  Future<void> saveProfile({
    required String fullName,
    required String city,
    required String jobTitle,
  }) async {
    final file = await _getProfileFile();

    final data = {
      'fullName': fullName,
      'city': city,
      'jobTitle': jobTitle,
    };

    await file.writeAsString(jsonEncode(data));
  }

  Future<Map<String, String>?> loadProfile() async {
    final file = await _getProfileFile();

    if (!await file.exists()) return null;

    final content = await file.readAsString();
    final Map<String, dynamic> jsonMap = jsonDecode(content);

    return {
      'fullName': jsonMap['fullName'] as String? ?? '',
      'city': jsonMap['city'] as String? ?? '',
      'jobTitle': jsonMap['jobTitle'] as String? ?? '',
    };
  }

  Future<void> clearProfile() async {
    final file = await _getProfileFile();
    if (await file.exists()) {
      await file.delete();
    }
  }
}
