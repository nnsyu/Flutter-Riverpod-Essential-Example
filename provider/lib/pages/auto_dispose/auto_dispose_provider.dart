// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_provider.g.dart';

@riverpod
String autoDisposeHello(AutoDisposeHelloRef ref) {
  ref.onDispose(() {
    print('[autoDispostHelloProvider] dispose');
  });
  return 'Hello';
}

// final autoDispostHelloProvider = Provider.autoDispose<String>((ref) {
//   print('[autoDispostHelloProvider] created');
//   ref.onDispose(() {
//     print('[autoDispostHelloProvider] dispose');
//   });
//   return 'Hello';
// });
