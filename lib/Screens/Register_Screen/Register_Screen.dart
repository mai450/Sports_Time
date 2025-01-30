import 'dart:developer';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/Screens/Register_Screen/otp_screen.dart';
import 'package:sports_app/Services/auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String countryCode = '+1'; // Default country code
  final TextEditingController phoneController = TextEditingController();
  final Auth auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'We will send you an One Time Password(OTP) on this phone number'),
            Row(
              children: [
                // Country Code Picker
                CountryCodePicker(
                  onChanged: (countryCodee) {
                    setState(() {
                      countryCode = countryCodee.dialCode ?? '+1';
                    });
                  },
                  initialSelection: 'US', // Default selection
                  favorite: const [
                    '+1',
                    'US',
                    '+20',
                    'EG'
                  ], // Add favorite codes
                  showCountryOnly: false, // Show country name + code
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
                const SizedBox(width: 10),

                // Phone Number Input
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  // Set isFirstRun to false so that the onboarding screen will not be shown again
                  // SharedPreferences.getInstance().then((prefs) {
                  //   prefs.setBool('isFirstRun', false);
                  //  }
                  // )
                  await sendCode();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text('Generate OTP')),
          ],
        ),
      ),
    );
  }

  Future<void> sendCode() async {
    if (phoneController.text.trim().isNotEmpty) {
      await auth.signInWithPhoneNum(
        phoneController.text.trim(),
        ({required verificationId}) {
          // _verificationId = verificationId;
          // _isCodeSent = true;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) => OtpScreen(
                      verificationId: verificationId,
                    )
                // isFirstRun ? RegisterScreen() : home_screen(),
                ),
          );
        },
        ({required firebaseAuthException}) {
          log(firebaseAuthException.message!);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('errorrrrr : ${firebaseAuthException.message}')));
        },
        ({required phoneAuthCredential}) async {
          await auth.signInWithCredential(phoneAuthCredential);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Authentication successful!")),
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter a valid phone number.")),
      );
    }
  }
}
