import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _nameController = TextEditingController();
  final _commentController = TextEditingController();

  String selectedCategory = 'General';
  final List<String> categories = ['General', 'Bug Report', 'Feature Request', 'Other'];

  void _submitFeedback() {
    print("Name: ${_nameController.text}");
    print("Category: $selectedCategory");
    print("Comment: ${_commentController.text}");

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Feedback Submitted!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback Form")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Your Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            const Text("Select Category:", style: TextStyle(fontWeight: FontWeight.bold)),
            DropdownButton<String>(
              value: selectedCategory,
              isExpanded: true,
              items: categories.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() => selectedCategory = newValue!);
              },
            ),
            const SizedBox(height: 15),

            TextField(
              controller: _commentController,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: "Comments",
                hintText: "Tell us what you think...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _submitFeedback,
              child: const Text("Submit Feedback"),
            ),
          ],
        ),
      ),
    );
  }
}