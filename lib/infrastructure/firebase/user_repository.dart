// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/domain/user/i_user_repository.dart';
import 'package:local_pay/domain/user/user.dart';

final userRepository = Provider<UserRepository>((ref) {
  return UserRepository(FirebaseFirestore.instance);
});

class UserRepository implements IUserRepository {
  const UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<User?> getById(String id) async {
    final snapshot = await _firestore.collection("users").doc(id).get();
    final data = snapshot.data();
    if (data == null) {
      return null;
    }
    return User.fromJson(data);
  }

  @override
  Future<void> save(User user) async {
    await _firestore.collection("users").doc(user.id).set(user.toJson());
  }
}
