import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Image.asset('assets/LankaQR.png', fit: BoxFit.cover),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: double.infinity,
                        child: Image.asset('assets/getStart1.png',
                            fit: BoxFit.contain),
                      ),
                    ),
                    const Text(
                      "QR code validator",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 0.5),
                    const Text("Use this app to validate QR codes",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    const SizedBox(height: 60),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
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
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/qr.png',
                                  height: 70, width: 70),
                              const SizedBox(height: 10),
                              const Text(
                                'Scan QR Code',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ), //////////////

                    const SizedBox(height: 20),
                    const Text(
                      "Scan QR from the gallery",
                      style: TextStyle(fontSize: 20),
                    ),
                    const Text(
                      "Once upload the Qr to the App you will be   ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                    const Text(
                      "redirected to the  result screen    ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),

                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Center(
                              child: const Text(
                                "Choose Qr Code",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset('assets/upload.png',
                                height: 5, width: 5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text("This application is developed by DirectPay"),
                  ],
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () {
                      //   SystemNavigator.pop();
                      exit(0);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      height: 60,
                      width: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/power-off.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
