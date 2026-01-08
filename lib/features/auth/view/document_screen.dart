import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/theme/text_theme.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();

  static Widget _documentCard({
    required String title,
    required IconData icon,
    required bool isSelected,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isSelected ? AppColors.secondary : Colors.white24,
          width: 1.5,
        ),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          _radioCircle(isSelected),
        ],
      ),
    );
  }

  static Widget _radioCircle(bool isSelected) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? AppColors.secondary : Colors.white38,
          width: 2,
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondary,
                ),
              ),
            )
          : null,
    );
  }
}

class _DocumentScreenState extends State<DocumentScreen> {
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
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    Container(
                      width: 100,
                      child: Divider(color: Colors.white, thickness: 3),
                    ),
                    Container(
                      width: 100,
                      child: Divider(color: AppColors.primary, thickness: 3),
                    ),
                    Container(
                      width: 100,
                      child: Divider(color: AppColors.primary, thickness: 3),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    child: Divider(color: Colors.grey, thickness: .5),
                  ),
                ),
                const Text(
                  'Select Document Type',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 9),
                const Text(
                  'We need to verify your identity as a proof',
                  style: TextStyle(color: Colors.white60, fontSize: 14),
                ),
                const SizedBox(height: 24),

                // National ID (selected)
                DocumentScreen._documentCard(
                  title: 'National ID Card',
                  icon: Icons.credit_card,
                  isSelected: true,
                ),

                // Passport
                DocumentScreen._documentCard(
                  title: 'Passport',
                  icon: Icons.public,
                  isSelected: false,
                ),

                // Driver License
                DocumentScreen._documentCard(
                  title: 'Driver License',
                  icon: Icons.directions_car,
                  isSelected: false,
                ),
                const Spacer(),
                Center(
                  child: Container(
                    child: Divider(color: Colors.grey, thickness: .5),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/scanId');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5E39C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Center(child: Container()),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget _buildDot({required bool isActive}) {
//   return Container(
//     width: isActive ? 120 : 120,
//     height: isActive ? 8 : 8,
//     decoration: BoxDecoration(
//       color: isActive ? Colors.white : Colors.white24,
//       shape: BoxShape.rectangle,
//     ),
//   );
// }
