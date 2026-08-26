import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class SignUpScreen extends StatelessWidget {
  Future<void> sendAiMessage(String messageText) async {
    try {
      final response = await http.post(
        Uri.parse('https://fatma-support-app.app.n8n.cloud/webhook/13040b1b-5e77-4af2-b305-d928adb721f9'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'message': messageText}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("رد الـ AI: ${data[0]['output']}");
      }
    } catch (e) {
      print("حدث خطأ: $e");
    }
  }
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              '  Hi!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 8),
            const Text(
              '  Create a new account',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 40),

            const TextField(
              decoration: InputDecoration(
                hintText: 'Amish567',
                hintStyle: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 5. حقل البريد الإلكتروني (Email)
            const TextField(
              decoration: InputDecoration(
                hintText: 'amishkr@gmail.com',
                hintStyle: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 6. حقل كلمة السر (Password)
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '••••••••',
                hintStyle: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // 7. زر SIGN UP
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  sendAiMessage("اهلا اريد مساعده في انشاء حساب");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5C6AC4), // اللون البنفسجي للزر
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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