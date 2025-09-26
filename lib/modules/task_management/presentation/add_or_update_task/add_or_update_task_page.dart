import 'package:flutter/material.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/loading_app/loading_app.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/mixin/padding_app/padding_app.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/mixin/validators_fields/validator_fields.dart';
import 'package:gerenciamento_de_tarefas/core/widgets/scroll/scroll_app.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/domain/entities/task_entity.dart';
import 'package:gerenciamento_de_tarefas/modules/task_management/presentation/add_or_update_task/controllers/add_or_update_task_controller.dart';
import 'package:get/get.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../../core/widgets/header_body/header_body_app.dart';
import '../../../../core/widgets/scaffod_app/scaffold_app.dart';
import '../../../../core/widgets/state_msg/state_msg.dart';
import '../../../../core/widgets/text_field_app/text_field_app.dart';

class AddOrUpdateTaskPage extends StatefulWidget {
  const AddOrUpdateTaskPage({super.key, required this.ctr, this.taskToUpdate});
  final AddTaskController ctr;
  final TaskEntity? taskToUpdate;

  @override
  State<AddOrUpdateTaskPage> createState() => _AddOrUpdateTaskPageState();
}

class _AddOrUpdateTaskPageState extends State<AddOrUpdateTaskPage> with ValidatorFields, PaddingApp {
  AddTaskController get ctr => widget.ctr;
  TaskEntity? get taskToUpdate => widget.taskToUpdate;

  @override
  void initState() {
    super.initState();
    ctr.initializing(taskToUpdate);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      body: ctr.obx(
        (state) => Builder(
          key: ValueKey(State),
          builder: (_) {
            if (state is AddOrUpdateStateLoading) return LoadingApp();

            if (state is AddTaskSuccess) {
              return StateMsg.success(
                state.msg,
                buttons: [
                  FilledButton.icon(
                    icon: Icon(Icons.add),
                    onPressed: ctr.onTapNewTask,
                    label: Text("Adicionar outra tarefa"),
                  ),
                  OutlinedButton.icon(
                    icon: Icon(Icons.home),
                    onPressed: ctr.onTapHome,
                    label: Text("Voltar ao início"),
                  ),
                ],
              );
            }

            if (state is UpdateTaskSuccess) {
              return StateMsg.success(
                state.msg,
                buttons: [
                  FilledButton.icon(icon: Icon(Icons.home), onPressed: ctr.onTapHome, label: Text("Voltar ao início")),
                ],
              );
            }
            if (state is AddOrUpdateTaskInput) {
              return Center(
                child: ScrollbarApp(
                  child: HeaderBodyApp(
                    title: state.hasAdd ? "Adicionar uma tarefa" : "Detalhes da tarefa",
                    padding: EdgeInsets.zero,
                    body: Form(
                      key: ctr.formsKey,
                      child: Column(
                        spacing: spacingColumnItensField,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                spacing: spacingColumnItensField,
                                children: [
                                  TextFieldApp(
                                    autoFocus: true,
                                    label: "Titulo",
                                    hint: "Digite o título da tarefa",
                                    ctr: ctr.ctrTitle,
                                    validator: validatorEmpty,
                                    textInputAction: TextInputAction.next,
                                  ),
                                  TextFieldApp(
                                    textInputAction: TextInputAction.done,
                                    ctr: ctr.ctrDesc,
                                    label: "Descrição (opcional)",
                                    hint: "Adicione detalhes ou observações (opcional)",
                                    minLines: 3,
                                    maxLines: 5,
                                  ),
                                ],
                              ),
                              TextButton.icon(
                                onPressed: ctr.onTapCompletedTask,
                                label: WidgetAnimator(
                                  incomingEffect: WidgetTransitionEffects.incomingSlideInFromLeft(),

                                  child: Text(
                                    key: ValueKey(state.hasCompleted),
                                    state.hasCompleted ? "Finalizada" : "Pendente",
                                  ),
                                ),
                                icon: WidgetAnimator(
                                  incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
                                  outgoingEffect: WidgetTransitionEffects.outgoingScaleDown(),
                                  child: Icon(
                                    key: ValueKey(state.hasCompleted),
                                    state.hasCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (state.hasAdd)
                            FilledButton.icon(
                              onPressed: ctr.onTapAddTask,
                              label: Text("Adicionar tarefa"),
                              icon: Icon(Icons.add),
                            )
                          else
                            FilledButton.icon(
                              onPressed: ctr.onTapUpdateTask,
                              label: Text("Atualizar tarefa"),
                              icon: Icon(Icons.refresh),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
