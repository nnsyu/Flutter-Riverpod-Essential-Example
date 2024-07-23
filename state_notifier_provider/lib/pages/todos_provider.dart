import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier_provider/models/todo_model.dart';

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier() : super([]);

  void addTodo({required String desc}) {
    state = [...state, Todo.add(desc: desc)];
  }

  void toggleTodo({required String id}) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(completed: !todo.completed) else todo
    ];
  }

  void removeTodo({required String id}) {
    state = [
      for (final todo in state)
        if (todo.id != id) todo
    ];
  }
}

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});