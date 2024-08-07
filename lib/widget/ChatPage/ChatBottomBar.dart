import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                  size: 30,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Type a message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(
                  Icons.attachment_outlined,
                  color: Colors.black38,
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black38,
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.send,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
    );
  }
}
