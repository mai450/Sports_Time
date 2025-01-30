import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future signInWithPhoneNum(
    String phoneNumber,
    Function({required String verificationId}) codeSent,
    Function({required FirebaseAuthException firebaseAuthException})
        verificationFailed,
    Function({required PhoneAuthCredential phoneAuthCredential})
        verificationCompleted,
  ) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        verificationCompleted(phoneAuthCredential: credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        verificationFailed(firebaseAuthException: e);
      },
      codeSent: (String verificationId, int? resendToken) {
        codeSent(verificationId: verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<UserCredential> signInWithCredential(
      PhoneAuthCredential credential) async {
    return await auth.signInWithCredential(credential);
  }
}
