import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/header_body/header_body_app.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/loading_app/loading_app.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/scaffod_app/scaffold_app.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/scroll/scroll_app.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'controllers/task_list_controller.dart';
import 'widgets/task_tile.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key, required this.ctr});
  final TaskListController ctr;
  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  TaskListController get ctr => widget.ctr;

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ctr.goToHome();
        },
      ),
      body: ctr.obx((state) {
        if (state is TaskListLoading) return LoadingApp();
        if (state is TaskListStarted) return Container();
        if (state is TaskListEmpty) return Text(state.msg);
        if (state is InitialGetError) return Text(state.msgError);
        if (state is TaskListLoaded) {
          return ScrollbarApp(
            child: HeaderBodyApp(
              padding: EdgeInsets.zero,
              title: "Lista de tarefas",
              body: AnimatedList(
                padding: EdgeInsets.zero,
                key: ctr.listKey,
                primary: false,
                shrinkWrap: true,
                initialItemCount: state.tasks.length,
                itemBuilder: (BuildContext context, int index, Animation<double> animation) {
                  var task = state.tasks[index];
                  return TaskTile(
                    onChangeStatusTask: ctr.onTapChangeTask,
                    animation: animation,
                    task: task,
                    onDelete: () {
                      ctr.onTapDeleteTask(
                        task,
                        deleteAnimation: (removeCallback) => ctr.listKey.currentState?.removeItem(
                          index,
                          (_, animation) => TaskTile(
                            task: task,
                            animation: animation
                              ..addStatusListener((status) {
                                if (status == AnimationStatus.dismissed) {
                                  removeCallback(index);
                                }
                              }),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        }
        return Container();
      }),
    );
  }
}
