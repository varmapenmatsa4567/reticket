import 'package:flutter/material.dart';
import 'package:reticket/features/auth/screens/otp.dart';
import 'package:reticket/utils/constants/colors.dart';
import 'package:reticket/utils/constants/text_strings.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              RTexts.phoneAuthTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              RTexts.phoneAuthSubtitle,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefix: Text("+91 ", style: TextStyle(color: Colors.black)),
                  contentPadding: const EdgeInsets.all(15),
                  hintText: RTexts.phoneNoPlaceholder,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: RColors.primaryColor, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: RColors.primaryColor,
                  minimumSize: Size(double.infinity, 50),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  RTexts.proceedBtnText,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
