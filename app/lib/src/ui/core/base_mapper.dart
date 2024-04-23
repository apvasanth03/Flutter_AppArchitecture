import 'package:flutter/foundation.dart';

///
/// Executes Mapper logic asynchronously using Isolate.
///
abstract class BaseMapper<I, O> {
  Future<O> call(I input) async {
    return compute(map, input);
  }

  Future<O> map(I input);
}
