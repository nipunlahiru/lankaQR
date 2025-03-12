import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String tag;
  final String value;
  final String validity;
  final int length;
  final void Function()? OnTap;

  const MyListTile({
    super.key,
    required this.tag,
    required this.value,
    required this.validity,
    required this.length,
    this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 120,
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
            child: Row(
              children: [
                Column(
                  children: [
                    const Text("Tag"),
                    const SizedBox(height: 5),
                    Text(tag,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(width: 20),
                Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: validity == "valid"
                          ? Colors.green.shade100
                          : Colors.red.shade100,
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
                    child: Center(child: Text(validity))),
                const SizedBox(width: 20),
                Column(
                  children: [
                    Text("Value"),
                    const SizedBox(height: 5),
                    Text(value),
                    const SizedBox(height: 10),
                    Text("length"),
                    const SizedBox(height: 5),
                    Text(length.toString()),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
