import 'package:json_annotation/json_annotation.dart';
import 'suggestion_data.dart';

part 'bank_suggestion_data.g.dart';

/// Every single suggestion is represented as AddressSuggestion.
@JsonSerializable(
  explicitToJson: true,
)
class BankSuggestionData {

  ///Address in long format with a region included.
  @JsonKey(name: 'unrestricted_value')
  final String? unrestrictedValue;
  @JsonKey(name: 'bic')
  final String? bic;
  @JsonKey(name: 'swift')
  final String? swift;
  @JsonKey(name: 'inn')
  final String? inn;
  @JsonKey(name: 'kpp')
  final String? kpp;
  @JsonKey(name: 'correspondent_account')
  final String? correspondent_account;


  BankSuggestionData(
      {this.unrestrictedValue,
      this.bic,
      this.swift,
      this.inn,
      this.kpp,
      this.correspondent_account});

  factory BankSuggestionData.fromJson(Map<String, dynamic> json) =>
      _$BankSuggestionDataFromJson(json);

  Map<String, dynamic> toJson() => _$BankSuggestionDataToJson(this);
}
