import 'package:json_annotation/json_annotation.dart';
part 'revgeocode_suggestion_request.g.dart';

/// Used to call reverse geocoding API.
@JsonSerializable(explicitToJson: true)
class RevgeocodeSuggestionRequest {
  @JsonKey(name: "lat")
  final double latitude;

  @JsonKey(name: "lon")
  final double longitude;

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'language')
  final String language;

  @JsonKey(name: "radius_meters")
  final int radiusMeters;



  ///New instance of [RevgeocodeSuggestionRequest].
  ///[latitude] and [longitude] of the point of interest are required.
  ///[count] defaults to `10` and [language] defaults to `ru`.
  RevgeocodeSuggestionRequest({
    required this.latitude,
    required this.longitude,
    this.count = 10,
    this.language = 'ru',
    this.radiusMeters = 100,
  });


  factory RevgeocodeSuggestionRequest.fromJson(Map<String, dynamic> json) =>
      _$RevgeocodeSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RevgeocodeSuggestionRequestToJson(this);
}
