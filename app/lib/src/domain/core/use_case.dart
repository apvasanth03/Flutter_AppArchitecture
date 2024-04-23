import 'package:app/src/domain/core/result.dart';
import 'package:flutter/foundation.dart';

///
/// Executes business logic asynchronously using Isolate.
///
abstract class UseCase<P, R> {
  Future<Result<R>> call(P param) async {
    try {
      // Moving all use case's executions to the background
      var result = await compute(execute, param);
      return Success(result);
    } on Exception catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Exception(e.toString()));
    }
  }

  ///
  /// Override this to set the code to be executed.
  ///
  Future<R> execute(P param);
}
