import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/route/route_name.dart';
import 'package:flutter_application_2/core/theme/text_theme.dart';

class ScanIdCard extends StatefulWidget {
  const ScanIdCard({super.key});

  @override
  State<ScanIdCard> createState() => _ScanIdCardState();
}

class _ScanIdCardState extends State<ScanIdCard> {
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

          Padding(
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
                      '  Scan ID Card',
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

                const Text(
                  'Take a photo the front of your',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Text(
                  'ID card',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Text(
                  'place your ID card in the frame below',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Spacer(),
                Image.asset('assets/images/frame.png'),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white12,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Icon(Icons.photo, color: Colors.white, size: 40),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print('object');
                        Navigator.pushNamed(context, RouteName.ScanIdInformation);
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5E39C).withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF5E39C),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white12,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Icon(Icons.sync, color: Colors.white, size: 40),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
