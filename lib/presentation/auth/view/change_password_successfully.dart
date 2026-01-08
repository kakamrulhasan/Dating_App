import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/route/route_name.dart';
import 'package:flutter_application_2/core/theme/text_theme.dart';

class passwordResetSuccessfully extends StatefulWidget {
  const passwordResetSuccessfully({super.key});

  @override
  State<passwordResetSuccessfully> createState() =>
      _passwordResetSuccessfullyState();
}

class _passwordResetSuccessfullyState extends State<passwordResetSuccessfully> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                        '  Forgot Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(""),
                      Text(""),
                    ],
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
                        child: Icon(Icons.check_circle_outline_outlined,weight: 70,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    'Congratulation!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    'Your password successfully updated!',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),

                  const SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.LoginScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color(0xFFEDDF99),
                      minimumSize: const Size(400, 60),
                    ),

                    child: Text(
                      'Back to Login',
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
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
