import 'package:flutter/material.dart';
import 'package:twitter/views/feature/home/chatting_scree.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chats")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChattingScreen()),
              );
            },
            minVerticalPadding: 12,
            title: Text("Username"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=464&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
            ),
          ),
          separatorBuilder: (context, index) =>
              Divider(thickness: 1, indent: 60, endIndent: 32),
        ),
      ),
    );
  }
}
