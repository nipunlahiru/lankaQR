import 'package:flutter/material.dart';
import 'package:lankaqr/screeens/home1.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home1()),
        );
      },
      child: Scaffold(
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
              color: Color(0xFF201B51),
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
      ),
    );
  }
}
