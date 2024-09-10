import 'package:flutter/material.dart';
import 'package:grocery_1/login/login.dart';

class ProfilePage extends StatelessWidget {
  final String name;

  const ProfilePage({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/Screenshot 2024-09-07 174827.png'), // صورة الملف الشخصي
          ),
          const SizedBox(height: 10),
           Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          _buildProfileOption(context, Icons.payment, 'Payment Methods'),
          _buildProfileOption(context, Icons.shopping_bag, 'My Orders'),
          _buildProfileOption(context, Icons.settings, 'Settings'),
          _buildProfileOption(context, Icons.help_center, 'Help Center'),
          _buildProfileOption(context, Icons.privacy_tip, 'Privacy Policy'),
          _buildProfileOption(context, Icons.group_add, 'Invite Friends'),
          _buildProfileOption(context, Icons.logout, 'Log Out'),
        ],
      ),
    );
  }

  Widget _buildProfileOption(
      BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        if (title == "Log Out") {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Login()),
          );
        }
      },
    );
  }
}
