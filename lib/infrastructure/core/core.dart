import 'package:FantasyE/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserIdLocator {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  Future<Option<UniqueId>> getUserID() async {
    String? id = await secureStorage.read(key: 'id');
    if (id != null) {
      return some(UniqueId.fromUniqueString(id));
    } else {
      return none();
    }
  }
}
