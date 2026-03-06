import 'package:flutter/material.dart';

class Task {
  String name;
  bool isDone;
  Task({required this.name, this.isDone = false});
}

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  final List<Task> _tasks = [];
  final _controller = TextEditingController();

  void _addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tasks.add(Task(name: _controller.text));
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Manager"),centerTitle: true,),
      body: Column(
        children: [
          // Input Field and Add Button
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(hintText: "New task..."),
                  ),
                ),
                IconButton(icon: const Icon(Icons.add), onPressed: _addTask),
              ],
            ),
          ),

          // Task List
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(
                    _tasks[index].name,
                    style: TextStyle(
                      decoration: _tasks[index].isDone ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  value: _tasks[index].isDone,
                  onChanged: (val) {
                    setState(() => _tasks[index].isDone = val!);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}