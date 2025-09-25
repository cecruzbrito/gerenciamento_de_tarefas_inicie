import '../../../../core/domain/errors/errors.dart';

class FailureAddTaskEmptyTitle extends Failure {
  FailureAddTaskEmptyTitle() : super(msg: "O título da tarefa é um campo obrigatório!");
}
