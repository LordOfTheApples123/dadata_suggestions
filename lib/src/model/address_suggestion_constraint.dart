import 'package:json_annotation/json_annotation.dart';
part 'address_suggestion_constraint.g.dart';

///AddressSuggestionConstraint used to limit search results according to
///Dadata online API documentation https://confluence.hflabs.ru/pages/viewpage.action?pageId=204669108.
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AddressSuggestionConstraint {
  @JsonKey(name: "region")
  final String? region;

  @JsonKey(name: "city")
  final String? city;

  @JsonKey(name: "street_type_full")
  final String? streetTypeFull;

  @JsonKey(name: "settlement_type_full")
  final String? settlementTypeFull;

  @JsonKey(name: "city_district_type_full")
  final String? cityDistrictTypeFull;

  @JsonKey(name: "city_type_full")
  final String? cityTypeFull;

  @JsonKey(name: "area_type_full")
  final String? areaTypeFull;

  @JsonKey(name: "region_type_full")
  final String? regionTypeFull;

  @JsonKey(name: "country")
  final String? country;

  @JsonKey(name: "country_iso_code")
  final String? countryISOCode;

  @JsonKey(name: "region_iso_code")
  final String? regionISOCode;

  @JsonKey(name: "kladr_id")
  final String? kladrId;

  @JsonKey(name: "region_fias_id")
  final String? regionFIASId;

  @JsonKey(name: "area_fias_id")
  final String? areaFIASId;

  @JsonKey(name: "city_fias_id")
  final String? cityFIASId;

  @JsonKey(name: "settlement_fias_id")
  final String? settlementFIASId;

  @JsonKey(name: "street_fias_id")
  final String? streetFIASId;

  ///AddressSuggestionConstraint used to limit search results according to
  ///Dadata online API documentation https://confluence.hflabs.ru/pages/viewpage.action?pageId=204669108.
  ///All the fields are optional.
  const AddressSuggestionConstraint({
    this.region,
    this.city,
    this.streetTypeFull,
    this.settlementTypeFull,
    this.cityDistrictTypeFull,
    this.cityTypeFull,
    this.areaTypeFull,
    this.regionTypeFull,
    this.country,
    this.countryISOCode,
    this.regionISOCode,
    this.kladrId,
    this.regionFIASId,
    this.areaFIASId,
    this.cityFIASId,
    this.settlementFIASId,
    this.streetFIASId,
  });

  factory AddressSuggestionConstraint.fromJson(Map<String, dynamic> json) =>
      _$AddressSuggestionConstraintFromJson(json);

  Map<String, dynamic> toJson() => _$AddressSuggestionConstraintToJson(this);
}
