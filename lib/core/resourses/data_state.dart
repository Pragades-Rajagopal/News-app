// Network call response either data failed
// or data success

import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

// For successful response
class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

// For failure response
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}
