// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_suggestion_constraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressSuggestionConstraint _$AddressSuggestionConstraintFromJson(
        Map<String, dynamic> json) =>
    AddressSuggestionConstraint(
      region: json['region'] as String?,
      city: json['city'] as String?,
      streetTypeFull: json['street_type_full'] as String?,
      settlementTypeFull: json['settlement_type_full'] as String?,
      cityDistrictTypeFull: json['city_district_type_full'] as String?,
      cityTypeFull: json['city_type_full'] as String?,
      areaTypeFull: json['area_type_full'] as String?,
      regionTypeFull: json['region_type_full'] as String?,
      country: json['country'] as String?,
      countryISOCode: json['country_iso_code'] as String?,
      regionISOCode: json['region_iso_code'] as String?,
      kladrId: json['kladr_id'] as String?,
      regionFIASId: json['region_fias_id'] as String?,
      areaFIASId: json['area_fias_id'] as String?,
      cityFIASId: json['city_fias_id'] as String?,
      settlementFIASId: json['settlement_fias_id'] as String?,
      streetFIASId: json['street_fias_id'] as String?,
    );

Map<String, dynamic> _$AddressSuggestionConstraintToJson(
    AddressSuggestionConstraint instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('region', instance.region);
  writeNotNull('city', instance.city);
  writeNotNull('street_type_full', instance.streetTypeFull);
  writeNotNull('settlement_type_full', instance.settlementTypeFull);
  writeNotNull('city_district_type_full', instance.cityDistrictTypeFull);
  writeNotNull('city_type_full', instance.cityTypeFull);
  writeNotNull('area_type_full', instance.areaTypeFull);
  writeNotNull('region_type_full', instance.regionTypeFull);
  writeNotNull('country', instance.country);
  writeNotNull('country_iso_code', instance.countryISOCode);
  writeNotNull('region_iso_code', instance.regionISOCode);
  writeNotNull('kladr_id', instance.kladrId);
  writeNotNull('region_fias_id', instance.regionFIASId);
  writeNotNull('area_fias_id', instance.areaFIASId);
  writeNotNull('city_fias_id', instance.cityFIASId);
  writeNotNull('settlement_fias_id', instance.settlementFIASId);
  writeNotNull('street_fias_id', instance.streetFIASId);
  return val;
}
