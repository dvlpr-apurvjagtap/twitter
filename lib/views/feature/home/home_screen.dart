import 'package:flutter/material.dart';
import 'package:twitter/views/feature/home/chats.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tweet"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chats()),
              );
            },
            icon: Icon(Icons.chat_rounded),
          ),
          SizedBox(width: 16),
        ],
      ),

      body: ListView.builder(
        itemCount: 2,
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: double.infinity,
              // height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF363636),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "username",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 5),
                  Text("tweet", style: Theme.of(context).textTheme.bodyLarge),

                  Text("date", style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
