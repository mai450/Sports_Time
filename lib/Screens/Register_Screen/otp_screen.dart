import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sports_app/Screens/Home_Screen.dart';
import 'package:sports_app/Screens/Register_Screen/Register_Screen.dart';
import 'package:sports_app/Services/auth.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen(
      {super.key, required this.verificationId, this.isCodeSent = false});
  final String verificationId;
  final bool isCodeSent;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isFirstRun = true;
  final TextEditingController otpController = TextEditingController();
  final Auth auth = Auth();

  @override
  void initState() {
    super.initState();
    // Check if it is the first run of the app
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        isFirstRun = prefs.getBool('isFirstRun') ?? true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'OTP Verification',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          RichText(
              text: const TextSpan(text: 'Enter code send to: ', children: [
            TextSpan(
                text: '01015246355',
                style: TextStyle(fontWeight: FontWeight.w600))
          ])),
          TextField(
            controller: otpController,
            decoration: const InputDecoration(
              labelText: 'Otp',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          ElevatedButton(
              onPressed: () async {
                // Set isFirstRun to false so that the onboarding screen will not be shown again
                SharedPreferences.getInstance().then((prefs) {
                  prefs.setBool('isFirstRun', false);
                });
                await verifyCode();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        isFirstRun ? const RegisterScreen() : home_screen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text('Verify')),
        ],
      ),
    );
  }

  Future<void> verifyCode() async {
    if (otpController.text.trim().isNotEmpty) {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId,
          smsCode: otpController.text.trim());

      try {
        await auth.signInWithCredential(phoneAuthCredential);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Authentication successful!")),
        );
        // Navigate to the next page or perform other actions
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Error: $e")),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter the OTP.")),
      );
    }
  }
}
