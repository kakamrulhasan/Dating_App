import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/route/route_name.dart';
import 'package:pinput/pinput.dart';

import '../../../core/theme/text_theme.dart';

class VerificationNumberScreen extends StatefulWidget {
  const VerificationNumberScreen({super.key});

  @override
  State<VerificationNumberScreen> createState() =>
      _VerificationNumberScreenState();
}

class _VerificationNumberScreenState extends State<VerificationNumberScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(bottom: BorderSide(color: Colors.white, width: 2)),
      ),
    );
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Star.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        '     Verification',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(''),
                      Text(''),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 150,
                      child: Divider(color: Colors.white, thickness: 5),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 144,
                        height: 144,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5E39C).withOpacity(0.12),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5E39C).withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5E39C),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        child: Icon(Icons.phone_android),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    'Please Verify Your Phone',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    'Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    'Enter the 6 digit code we sent by SMS to',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    '+1234 567 89',
                    style: TextStyle(
                      color: AppColors.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),

                  Pinput(
                    length: 5,
                    keyboardType: TextInputType.number,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: defaultPinTheme.copyWith(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.secondary,
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    submittedPinTheme: defaultPinTheme.copyWith(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.secondary,
                            width: 2.5,
                          ),
                        ),
                      ),
                    ),
                    showCursor: true,

                    onCompleted: (pin) {
                      debugPrint('OTP: $pin');
                    },
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/repasscreate');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color(0xFFEDDF99),
                      minimumSize: const Size(400, 60),
                    ),

                    child: Text(
                      'Verify',
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't receive the code? ",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.RegisterScreen);
                        },
                        child: const Text(
                          'Resend Code',
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
