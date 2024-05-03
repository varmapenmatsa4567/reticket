import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:reticket/utils/constants/colors.dart';
import 'package:reticket/utils/constants/text_strings.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              RTexts.otpTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              RTexts.otpSubtitle,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              borderColor: RColors.primaryColor,
              focusedBorderColor: RColors.primaryColor,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(RTexts.didntReceiveOtp),
                TextButton(
                  onPressed: () {},
                  child: Text(RTexts.resendOtp),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
