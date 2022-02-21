import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:todo_app/model/todo_model.dart';

class ToDoController extends GetxController {
  final todoList = <ToDoModel>[].obs;

  void addToDoList() {
    String? title;
    String? description;

    Get.bottomSheet(
        BottomSheet(
          onClosing: () {},
          builder: (context) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text('Add To DO',
                        style:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter Title'),
                    onChanged: (val) {
                      title = val;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    maxLines: 4,
                    decoration: const InputDecoration(
                        hintText: 'Enter Description',
                        contentPadding: EdgeInsets.all(12.0)),
                    onChanged: (val) {
                      description = val;
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {
                        Get.back();
                      }, child: const Text('Cancel')),
                      TextButton(
                        onPressed: () {
                          todoList.add(
                              ToDoModel(title: title, description: description));
                          Get.back();
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        );
  }
}
