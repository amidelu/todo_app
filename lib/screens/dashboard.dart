import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/todo_controller.dart';
import 'package:todo_app/theme/theme_service.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final controller = Get.put(ToDoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do App'),
        actions: [
          IconButton(
              onPressed: () {
                ThemeService().changeThemeMode();
              },
              icon: const Icon(Icons.wb_sunny_outlined)),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              itemCount: controller.todoList.length,
              itemBuilder: (context, index) {
                final toDo = controller.todoList[index];
                return Card(
                  child: ListTile(
                    title: Text(toDo.title.toString()),
                    subtitle: Text(toDo.description ?? ''),
                    trailing: IconButton(
                        onPressed: () {
                          Get.defaultDialog(
                              title: 'Alert!',
                              middleText:
                                  'Are you sure want to delete this entry?',
                              textConfirm: 'Delete',
                              confirmTextColor: Colors.red,
                              textCancel: 'Cancel',
                              onConfirm: () {
                                controller.todoList.removeAt(index);
                                Get.back();
                              },
                              onCancel: () {
                                Get.back();
                              });
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addToDoList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
