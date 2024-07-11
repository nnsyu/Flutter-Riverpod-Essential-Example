import 'package:flutter/material.dart';
import 'package:freezed_sample/models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  Person generatePerson({
    required int id,
    required String name,
    required String email,
  }) {
    return Person(id: id, name: name, email: email);
  }

  @override
  Widget build(BuildContext context) {
    final person1 = generatePerson(
      id: 1,
      name: 'john',
      email: 'john@gmail.com',
    );
    print(person1);
    final person2 = generatePerson(
      id: 1,
      name: 'john',
      email: 'john@gmail.com',
    );
    print(person1 == person2);

    final person3 = person1.copyWith(
      id: 2,
      email: 'johnode@gmail.com',
    );
    print(person3);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
    );
  }
}
