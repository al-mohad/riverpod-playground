import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamServiceProvider = Provider<StreamService>((ref) => StreamService());

class StreamService {
  Stream<int> getInt() {
    return Stream.periodic(const Duration(seconds: 1), (i) => i).take(30);
  }
}
