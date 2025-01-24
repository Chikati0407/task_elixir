import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentDateProvider = StateProvider((ref){
  return DateTime.now();
});