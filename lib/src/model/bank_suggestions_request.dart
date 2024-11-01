import 'package:json_annotation/json_annotation.dart';

part 'bank_suggestions_request.g.dart';

/// Every single suggestion is represented as AddressSuggestion.
@JsonSerializable(
  explicitToJson: true,
)
class BankSuggestionRequest {
  ///Address in short format.
  @JsonKey(name: 'query')
  final String query;

  ///Address in long format with a region included.
  @JsonKey(name: 'type')
  final List<String>? type;


  const BankSuggestionRequest({
    required this.query,
    this.type = const ["BANK"],
  });

  factory BankSuggestionRequest.fromJson(Map<String, dynamic> json) =>
      _$BankSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BankSuggestionRequestToJson(this);
}
