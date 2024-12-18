// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revgeocode_suggestion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RevgeocodeSuggestionRequest _$RevgeocodeSuggestionRequestFromJson(
        Map<String, dynamic> json) =>
    RevgeocodeSuggestionRequest(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['lon'] as num).toDouble(),
      count: (json['count'] as num?)?.toInt() ?? 10,
      language: json['language'] as String? ?? 'ru',
      radiusMeters: (json['radius_meters'] as num?)?.toInt() ?? 100,
    );

Map<String, dynamic> _$RevgeocodeSuggestionRequestToJson(
        RevgeocodeSuggestionRequest instance) =>
    <String, dynamic>{
      'lat': instance.latitude,
      'lon': instance.longitude,
      'count': instance.count,
      'language': instance.language,
      'radius_meters': instance.radiusMeters,
    };
