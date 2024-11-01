import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:dadata_suggestions/src/model/bank_suggestion_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'suggestion_data.dart';

part 'bank_suggestions_response.g.dart';

/// Every single suggestion is represented as AddressSuggestion.
@JsonSerializable(
)
class BankSuggestionsResponse {
  ///Address in short format.
  @JsonKey(name: 'suggestions')
  final List<BankSuggestion>? suggestions;



  const BankSuggestionsResponse({
    this.suggestions,
  });

  factory BankSuggestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$BankSuggestionsResponseFromJson(json);
}
