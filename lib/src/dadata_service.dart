
import 'package:dadata_suggestions/src/constants.dart';
import 'package:dadata_suggestions/src/model/bank_suggestion.dart';
import 'package:dadata_suggestions/src/model/bank_suggestions_request.dart';
import 'package:dadata_suggestions/src/model/bank_suggestions_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'dadata_service.g.dart';

/// я не хочу новые запросы писать через httpClient
@RestApi()
abstract class DadataService {
  factory DadataService(Dio dio, {String? baseUrl}) = _DadataService;

  @POST(Constants.banksSuggest)
  Future<BankSuggestionsResponse> getBankSuggestions(
      @Body() BankSuggestionRequest query,
      );
}