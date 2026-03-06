import 'package:flutter/material.dart';


class SwipeTodoApp extends StatefulWidget {
  const SwipeTodoApp({super.key});

  @override
  State<SwipeTodoApp> createState() => _SwipeTodoAppState();
}

class _SwipeTodoAppState extends State<SwipeTodoApp> {
  final List<String> _tasks = ["Buy Milk", "Clean Room", "Finish Homework"];
  final _controller = TextEditingController();

  void _addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tasks.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Swipe to Delete"),centerTitle: true,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(hintText: "Add a new task"),
                  ),
                ),
                IconButton(icon: const Icon(Icons.add), onPressed: _addTask),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                final task = _tasks[index];

                return Dismissible(
                  key: Key(task + index.toString()),
                  direction: DismissDirection.endToStart, // Swipe right to left
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      _tasks.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$task dismissed')),
                    );
                  },
                  child: ListTile(
                    title: Text(task),
                    leading: const Icon(Icons.task_alt),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}