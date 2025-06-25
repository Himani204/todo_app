import 'package:flutter/material.dart';
import 'package:todo_app/screens/demo.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Himani- uknown',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Edit!')));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Demo();
                    },
                  ),
                );
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
