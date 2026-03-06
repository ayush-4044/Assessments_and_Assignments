import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final todoProvider = StateNotifierProvider<TodoNotifier, List<String>>((ref) {
  return TodoNotifier();
});

class TodoNotifier extends StateNotifier<List<String>> {
  TodoNotifier() : super([]);

  void addTask(String task) {
    state = [...state, task];
  }

  void removeTask(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i != index) state[i]
    ];
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends ConsumerWidget {

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final todos = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Riverpod To-Do App"),
      ),

      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Enter Task",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(todoProvider.notifier).addTask(controller.text);
                controller.clear();
              }
            },
            child: Text("Add Task"),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {

                return ListTile(
                  title: Text(todos[index]),

                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      ref.read(todoProvider.notifier).removeTask(index);
                    },
                  ),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}