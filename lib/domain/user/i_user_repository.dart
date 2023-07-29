// Project imports:
import 'package:local_pay/domain/user/user.dart';

abstract class IUserRepository {
  Future<User?> getById(String id);
  Future<void> save(User user);
}
