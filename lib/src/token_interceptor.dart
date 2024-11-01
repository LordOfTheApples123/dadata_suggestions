import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  /// Create instance of [JWTInterceptor].
  TokenInterceptor(this._dadataToken);

  final String _dadataToken;

  /// Add JWT authorization token to any request, if available.
  @override
  void onRequest(options, handler) {
      options.headers['Authorization'] = 'Token $_dadataToken';

    return super.onRequest(options, handler);
  }
}