import 'package:json_annotation/json_annotation.dart';
part 'address_suggestion_radius_constraint.g.dart';

/// Used to limit the search for suggested addresses with the radius around
/// a coordinate point.
@JsonSerializable(explicitToJson: true)
class AddressSuggestionRadiusConstraint {
  @JsonKey(name: "lat", required: true)
  final double latitude;

  @JsonKey(name: "lon", required: true)
  final double longitude;

  @JsonKey(name: "radius_meters")
  final int radiusMeters;


  /// Used to limit the search for suggested addresses with the radius around
  /// a coordinate point.
  /// [latitude] and [longitude] of type [double] are required.
  /// [radiusMeters] is optional and would be equal to 100 metres if not provided.
  /// Radius limited to 100 000 metres and would be set with this value if exceeded.
  const AddressSuggestionRadiusConstraint({
    required this.latitude,
    required this.longitude,
    this.radiusMeters = 100,
  }) ;


  factory AddressSuggestionRadiusConstraint.fromJson(
          Map<String, dynamic> json) =>
      _$AddressSuggestionRadiusConstraintFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AddressSuggestionRadiusConstraintToJson(this);
}
