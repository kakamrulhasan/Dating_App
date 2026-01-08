import 'package:flutter/material.dart';

class ScanIdInformation extends StatefulWidget {
  const ScanIdInformation({super.key});

  @override
  State<ScanIdInformation> createState() => _ScanIdInformationState();
}

class _ScanIdInformationState extends State<ScanIdInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Star.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),

                const Text(
                  'ID Information',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),

                Center(
                  child: Container(
                    child: Divider(thickness: 0.4, color: Colors.grey.shade800),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Full Name',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),
                    const Text(
                      'Alex Mate',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    child: Divider(thickness: 0.4, color: Colors.grey.shade800),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ID Number',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),
                    const Text(
                      '1234 123 134',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    child: Divider(thickness: 0.4, color: Colors.grey.shade800),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Date of Birth',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),
                    const Text(
                      '2nd September, 2000',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    child: Divider(thickness: 0.4, color: Colors.grey.shade800),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Address',
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),

                    const Text(
                      'California, USA',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    child: Divider(thickness: 0.4, color: Colors.grey.shade800),
                  ),
                ),

                SizedBox(height: 40),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color(0xFFEDDF99),
                    minimumSize: const Size(400, 60),
                  ),

                  child: Text(
                    'Verify Your Identity          ',
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
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
