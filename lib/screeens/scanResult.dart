import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lankaqr/screeens/home1.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF201B51),
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(
                  'assets/getStart1.png',
                  height: 200,
                  width: 200,
                ),
                const Text(
                  "QR code validator",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Scan Result",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          const SizedBox(height: 40),
          Image.asset(
            'assets/close.png',
            height: 100,
            width: 100,
          ),
          const SizedBox(height: 20),
          const Text("Validation Failed",
              style: TextStyle(fontSize: 20, color: Colors.red)),
          const SizedBox(height: 10),
          const Text("No data found",
              style: TextStyle(fontSize: 10, color: Colors.black)),
          const SizedBox(height: 80),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
              child: Text("Back to scanner",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home1()));
              },
              child: Image.asset(
                'assets/home.png',
                height: 60,
                width: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
