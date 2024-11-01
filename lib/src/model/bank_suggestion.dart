import 'package:dadata_suggestions/src/model/bank_suggestion_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'suggestion_data.dart';

part 'bank_suggestion.g.dart';

/// Every single suggestion is represented as AddressSuggestion.
@JsonSerializable(
  explicitToJson: true,
)
class BankSuggestion {
  ///Address in short format.
  @JsonKey(name: 'value')
  final String? value;

  ///Address in long format with a region included.
  @JsonKey(name: 'unrestricted_value')
  final String? unrestrictedValue;

  ///All the data returned in response to suggestion query.
  @JsonKey(name: 'data')
  final BankSuggestionData? data;

  const BankSuggestion({
    this.value,
    this.unrestrictedValue,
    this.data,
  });

  factory BankSuggestion.fromJson(Map<String, dynamic> json) =>
      _$BankSuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$BankSuggestionToJson(this);
}
