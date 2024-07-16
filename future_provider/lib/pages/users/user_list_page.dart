import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider/pages/users/users_providers.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(userListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      // body: switch (userList) {
      //   AsyncData(value: final users) => ListView.separated(
      //       itemCount: users.length,
      //       separatorBuilder: (context, index) => const Divider(),
      //       itemBuilder: (context, index) {
      //         final user = users[index];

      //         return ListTile(
      //           leading: CircleAvatar(
      //             child: Text(
      //               user.id.toString(),
      //             ),
      //           ),
      //           title: Text(
      //             user.name,
      //           ),
      //         );
      //       },
      //     ),
      //   AsyncError(error: final e) => Text(
      //       e.toString(),
      //       style: const TextStyle(
      //         fontSize: 20,
      //         color: Colors.red,
      //       ),
      //     ),
      //   _ => const Center(
      //       child: CircularProgressIndicator(),
      //     ),
      // },
      body: userList.when(
        data: (users) {
          return ListView.separated(
            itemCount: users.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final user = users[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    user.id.toString(),
                  ),
                ),
                title: Text(
                  user.name,
                ),
              );
            },
          );
        },
        error: (error, stackTrace) => Center(
          child: Text(
            error.toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
