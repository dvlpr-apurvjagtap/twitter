import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController postController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Create Post")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xFF363636),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: postController,
                maxLines: null, // Expands with content
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: "What's on your mind?",
                  border: InputBorder.none,
                ),
                style: const TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("POST TWEET")),
          ],
        ),
      ),
    );
  }
}
