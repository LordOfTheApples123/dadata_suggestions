part of dadata_suggestions;

/// Provides actual API calling.
class DadataClient {
  /// Если кто-то после меня захочет доработать, перенесите запросы
  /// из httpClient в человеческий dio+retrofit
  final _client = Client();
  late final _dio = Dio(BaseOptions(
    responseType: ResponseType.json,
    contentType: Headers.jsonContentType,
    sendTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
    baseUrl: Constants.suggestionsAPIURL,
  ))
    ..interceptors.add(TokenInterceptor(
      _token,
    ));
  final String _token;

  late final _dadataService = DadataService(_dio);

  Map<String, String> get _headers {
    return {
      "Authorization": "Token $_token",
      "Content-Type": "application/json",
    };
  }

  DadataClient(this._token);

  /// Calls suggestions API with [AddressSuggestionRequest] provided.
  Future<AddressResponse> suggest(AddressSuggestionRequest query) async {
      final q = query.toJson();
      return _performRequest(q, Constants.addressEndpoint);
  }

  Future<BankSuggestionsResponse> suggestBank(BankSuggestionRequest request) async {
    return await _dadataService.getBankSuggestions(request);
  }

  Future<AddressResponse> suggestByIp(String? ip) async {
    final q = {'ip': ip};
    return _performRequest(q, Constants.addressEndpoint);
  }

  /// Calls reverse geocoding API with [RevgeocodeSuggestionRequest] provided.
  Future<AddressResponse> revGeocode(RevgeocodeSuggestionRequest query) async {
    final q = query.toJson();
    return _performRequest(q, Constants.revGeocodeEndpoint);
  }

  Future<AddressResponse> _performRequest(
    dynamic query,
    String endpoint,
  ) async {
    final resp = await _client.post(
      Uri.parse(endpoint),
      headers: _headers,
      body: jsonEncode(query),
    );
    return AddressResponse.fromJson(jsonDecode(resp.body));
  }
}
