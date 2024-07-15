//import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basic_provider.g.dart';

@Riverpod(keepAlive: true)
String hello(HelloRef ref) {
  ref.onDispose(() {
    print('[helloProvider] dispose');
  });
  return 'Hello';
}

@Riverpod(keepAlive: true)
String world(WorldRef ref) {
  ref.onDispose(() {
    print('[worldProvider] dispose');
  });
  return 'World';
}

// final helloProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     print('[helloProvider] dispose');
//   });
//   return 'Hello';
// });

// final worldProvider = Provider<String>((ref) {
//   ref.onDispose(() {
//     print('[worldProvider] dispose');
//   });
//   return 'World';
// });
