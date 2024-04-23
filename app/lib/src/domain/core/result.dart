///
/// A class that represents the result of an operation.
///
sealed class Result<T> {
  const Result();
}

///
/// A class that represents a successful result of an operation.
///
class Success<T> extends Result<T> {
  final T data;

  Success(this.data);

  @override
  String toString() {
    return 'Success{data: $data}';
  }
}

///
/// A class that represents an error result of an operation.
///
class Error<T> extends Result<T> {
  final Exception exception;

  Error(this.exception);

  @override
  String toString() {
    return 'Error{exception: $exception}';
  }
}
