import 'package:flutter/material.dart';
import '../db_helper/db_helper.dart';
import '../models/task_model.dart';

class TaskListScreen extends StatefulWidget {
  final VoidCallback onThemeToggle;
  const TaskListScreen({super.key, required this.onThemeToggle});

  @override
  TaskListScreenState createState() => TaskListScreenState();
}

class TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    refreshTasks();
  }

  void refreshTasks() async {
    final data = await DatabaseHelper.getAllTasks();
    if (!mounted) return;
    setState(() {
      tasks = data;
    });
  }

  void showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 1),
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void showForm(Task? task) {
    final titleController = TextEditingController(text: task?.title ?? "");
    final descController = TextEditingController(text: task?.description ?? "");
    String selectedDate = task?.dueDate ?? DateTime.now().toString().split(' ')[0];
    String selectedStatus = task?.status ?? "pending";

    showDialog(
      context: context,
      builder: (context) {
        double screenWidth = MediaQuery.of(context).size.width;

        return StatefulBuilder(
          builder: (context, setDialogState) => AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            insetPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            title: Text(task == null ? "New Task" : "Update Task"),
            content: SizedBox(
              width: screenWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(labelText: "Title", border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: descController,
                      maxLines: 3,
                      decoration: const InputDecoration(labelText: "Description", border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text("Date: $selectedDate"),
                      trailing: const Icon(Icons.calendar_month),
                      onTap: () async {
                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null) {
                          setDialogState(() => selectedDate = picked.toString().split(' ')[0]);
                        }
                      },
                    ),
                    DropdownButtonFormField<String>(
                      value: selectedStatus,
                      decoration: const InputDecoration(labelText: "Status", border: OutlineInputBorder()),
                      items: ["pending", "completed"].map((String value) {
                        return DropdownMenuItem<String>(value: value, child: Text(value));
                      }).toList(),
                      onChanged: (val) => setDialogState(() => selectedStatus = val!),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
              ElevatedButton(
                onPressed: () async {
                  Task newTask = Task(
                    id: task?.id,
                    title: titleController.text,
                    description: descController.text,
                    dueDate: selectedDate,
                    status: selectedStatus,
                  );

                  if (task == null) {
                    await DatabaseHelper.insertTask(newTask);
                    if (context.mounted) showSnackBar("Task Added Successfully!", Colors.green);
                  } else {
                    await DatabaseHelper.updateTask(newTask);
                    if (context.mounted) showSnackBar("Task Updated Successfully!", Colors.blue);
                  }
                  if (context.mounted) {
                    Navigator.pop(context);
                    refreshTasks();
                  }
                },
                child: const Text("Save"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TaskMate"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onThemeToggle,
          ),
        ],
      ),
      body: tasks.isEmpty
          ? const Center(child: Text("No tasks found. Tap + to add one!"))
          : ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.03,
          vertical: 8,
        ),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Card(
            elevation: 2,
            color: isDarkMode ? Colors.grey[900] : Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              contentPadding: EdgeInsets.all(screenWidth * 0.04),
              leading: CircleAvatar(
                radius: screenWidth * 0.06,
                backgroundColor: task.status == "completed"
                    ? Colors.green
                    : (isDarkMode ? Colors.tealAccent[700] : Colors.blueAccent),
                child: Icon(
                  task.status == "completed" ? Icons.check : Icons.assignment,
                  color: Colors.white,
                  size: screenWidth * 0.06,
                ),
              ),
              title: Text(
                task.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.045,
                  decoration: task.status == "completed" ? TextDecoration.lineThrough : null,
                  color: isDarkMode ? Colors.white : Colors.black87,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    task.description,
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: isDarkMode ? Colors.white70 : Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 10,
                    children: [
                      Text(task.dueDate, style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
                      Text(task.status.toUpperCase(),
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: task.status == "completed" ? Colors.green : Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: isDarkMode ? Colors.amber[300] : Colors.blue),
                    onPressed: () => showForm(task),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.redAccent),
                    onPressed: () async {
                      await DatabaseHelper.deleteTask(task.id!);
                      refreshTasks();
                      if (context.mounted) showSnackBar("Task Deleted", Colors.red);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(null),
        child: const Icon(Icons.add),
      ),
    );
  }
}