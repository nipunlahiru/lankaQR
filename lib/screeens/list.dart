import 'package:flutter/material.dart';
import 'package:lankaqr/components/myListtile.dart';
import 'package:lankaqr/screeens/home1.dart';
import 'package:lankaqr/screeens/qrScreen.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  height: 150,
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
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: const [
                    MyListTile(
                        tag: "hungama",
                        value: "colombo",
                        validity: "valid",
                        length: 5),
                    MyListTile(
                        tag: "hungama",
                        value: "colombo",
                        validity: "invalid",
                        length: 5),
                    MyListTile(
                        tag: "hungama",
                        value: "colombo",
                        validity: "valid",
                        length: 5),
                    MyListTile(
                        tag: "hungama",
                        value: "colombo",
                        validity: "valid",
                        length: 5),
                    MyListTile(
                        tag: "hungama",
                        value: "colombo",
                        validity: "valid",
                        length: 5),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Home1();
                    }));
                  },
                  child: Image.asset('assets/home.png', height: 50, width: 50)),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Qrscreen();
                  }));
                },
                child: Container(
                  height: 50,
                  width: 150,
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
                    child: Text(
                      "Back to Scanner",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "This application developed by DirectPay",
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
