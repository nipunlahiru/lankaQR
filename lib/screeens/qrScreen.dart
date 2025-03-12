import 'package:flutter/material.dart';
import 'package:lankaqr/screeens/home1.dart';

class Qrscreen extends StatelessWidget {
  const Qrscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      // Positioned.fill() is used to position the child widget to fill the parent widget.
                      child: Image.asset(
                        'assets/index.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Image.asset(
                        'assets/qr.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/home1');
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.asset('assets/flash.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text("Place above square directly on the QR code"),
          const SizedBox(height: 20),
          const Text(
            "You will be redirected to the result screen automatically",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Home1();
              }));
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                child: Text("Back to Dashboard"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
