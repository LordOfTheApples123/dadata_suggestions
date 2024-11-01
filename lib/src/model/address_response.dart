import 'package:json_annotation/json_annotation.dart';
import 'address_suggestion.dart';
part 'address_response.g.dart';

/// Represents an object used to hold API response.
@JsonSerializable(explicitToJson: true)
class AddressResponse {
  @JsonKey(name: 'suggestions')
   final List<AddressSuggestion>? suggestions;

  const AddressResponse({
    this.suggestions,
  });

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressResponseToJson(this);
}
