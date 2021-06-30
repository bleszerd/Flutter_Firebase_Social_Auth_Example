import 'package:flutter/material.dart';

class Authorized extends StatelessWidget {
  const Authorized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("Vinícius Resende"),
              CircleAvatar(
                backgroundColor: Colors.redAccent,
              ),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    color: Colors.redAccent,
                  ),
                  child: Row(
                    children: [
                      Text("Sair",
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
