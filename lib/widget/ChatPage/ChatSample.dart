import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class chatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 25, right: 10, bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Text(
                "Hello, How are you?",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, bottom: 10, right: 20),
              decoration: BoxDecoration(
                color: Colors.blue[200],
              ),
              child: const Text(
                "Hi, Student, i am fine and well. thanks for asking and what about you? i hope you are also fine and well.",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
