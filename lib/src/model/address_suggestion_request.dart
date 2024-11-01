import 'package:json_annotation/json_annotation.dart';

import 'address_suggestion_constraint.dart';
import 'address_suggestion_priority.dart';
import 'address_suggestion_radius_constraint.dart';
import 'level_boundry.dart';

part 'address_suggestion_request.g.dart';

///Used to call address sugestions API.
@JsonSerializable(explicitToJson: true)
class AddressSuggestionRequest {
  @JsonKey(name: 'query', required: true)
  final String? query;

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'language')
  final String language;

  @JsonKey(name: 'locations')
  final List<AddressSuggestionConstraint>? constraints;

  @JsonKey(name: 'locations_geo')
  final List<AddressSuggestionRadiusConstraint>? radiusConstraints;

  @JsonKey(name: 'locations_boost')
  final List<AddressSuggestionPriority>? locationsPriority;

  @JsonKey(name: 'from_bound')
  final LevelBoundry? upperBoundary;
  @JsonKey(name: 'to_bound')
  final LevelBoundry? lowerBoundary;

  ///AddressSuggestionRequest represents an serializable object
  ///used to perform suggestion queries.
  ///[query] is required field.
  ///[count] defaults to `10` and [language] defaults to `ru`.
  const AddressSuggestionRequest(
     {
       this.query,
    this.count = 10,
    this.language = 'ru',
    this.constraints,
    this.radiusConstraints,
    this.locationsPriority,
    this.upperBoundary,
    this.lowerBoundary,
  });

  factory AddressSuggestionRequest.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionRequestToJson(this);
}
