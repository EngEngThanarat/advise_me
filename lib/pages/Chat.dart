import 'package:advise_me/widget/ChatPage/chatWidget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: AppBar(
                elevation: 0,
                title: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Chat',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(top: 12, right: 15),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            body: ChatWidget()));
  }
}
