import 'package:flutter/material.dart';
import 'package:lankaqr/screeens/home1.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home1()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: (Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Image.asset(
              'assets/getStart2.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: const Color(0xFF201B51),
            height: MediaQuery.of(context).size.height * 0.4,
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
                const SizedBox(height: 0.5),
                const Text("From",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                const Text("DirectPay",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
