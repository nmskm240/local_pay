enum FirebaseAuthExceptionReason {
  accountExistsWithDifferentCredential(
      "account-exists-with-different-credential"),
  emailAlreadyInUse("email-already-in-use"),
  invalidEmail("invalid-email"),
  operationNotAllowed("operation-not-allowed"),
  userDisabled("user-disabled"),
  userNotFound("user-not-found"),
  weakPassword("weak-password"),
  worngPassword("wrong-password"),
  ;

  const FirebaseAuthExceptionReason(this.code);

  final String code;
}
