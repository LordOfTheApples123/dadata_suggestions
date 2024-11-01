import 'package:json_annotation/json_annotation.dart';

part 'suggestion_data.g.dart';

@JsonSerializable(explicitToJson: true)
class SuggestionData {
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  @JsonKey(name: 'country')
  final String? country;

  @JsonKey(name: 'country_iso_code')
  final String? countryIsoCode;

  @JsonKey(name: 'federal_district')
  final String? federalDistrict;

  @JsonKey(name: 'region_fias_id')
  final String? regionFiasId;

  @JsonKey(name: 'region_kladr_id')
  final String? regionKladrId;

  @JsonKey(name: 'region_iso_code')
  final String? regionIsoCode;

  @JsonKey(name: 'region_with_type')
  final String? regionWithType;

  @JsonKey(name: 'region_type')
  final String? regionType;

  @JsonKey(name: 'region_type_full')
  final String? regionTypeFull;

  @JsonKey(name: 'region')
  final String? region;

  @JsonKey(name: 'area_fias_id')
  final String? areaFiasId;

  @JsonKey(name: 'area_kladr_id')
  final String? areaKladrId;

  @JsonKey(name: 'area_with_type')
  final String? areaWithType;

  @JsonKey(name: 'area_type')
  final String? areaType;

  @JsonKey(name: 'area_type_full')
  final String? areaTypeFull;

  @JsonKey(name: 'area')
  final String? area;

  @JsonKey(name: 'city_fias_id')
  final String? cityFiasId;

  @JsonKey(name: 'city_kladr_id')
  final String? cityKladrId;

  @JsonKey(name: 'city_with_type')
  final String? cityWithType;

  @JsonKey(name: 'city_type')
  final String? cityType;

  @JsonKey(name: 'city_type_full')
  final String? cityTypeFull;

  @JsonKey(name: 'city')
  final String? city;

  @JsonKey(name: 'city_area')
  final String? cityArea;

  @JsonKey(name: 'city_district_fias_id')
  final String? cityDistrictFiasId;

  @JsonKey(name: 'city_district_kladr_id')
  final String? cityDistrictKladrId;

  @JsonKey(name: 'city_district_with_type')
  final String? cityDistrictWithType;

  @JsonKey(name: 'city_district_type')
  final String? cityDistrictType;

  @JsonKey(name: 'city_district_type_full')
  final String? cityDistrictTypeFull;

  @JsonKey(name: 'city_district')
  final String? cityDistrict;

  @JsonKey(name: 'settlement_fias_id')
  final String? settlementFiasId;

  @JsonKey(name: 'settlement_kladr_id')
  final String? settlementKladrId;

  @JsonKey(name: 'settlement_with_type')
  final String? settlementWithType;

  @JsonKey(name: 'settlement_type')
  final String? settlementType;

  @JsonKey(name: 'settlement_type_full')
  final String? settlementTypeFull;

  @JsonKey(name: 'settlement')
  final String? settlement;

  @JsonKey(name: 'street_fias_id')
  final String? streetFiasId;

  @JsonKey(name: 'street_kladr_id')
  final String? streetKladrId;

  @JsonKey(name: 'street_with_type')
  final String? streetWithType;

  @JsonKey(name: 'street_type')
  final String? streetType;

  @JsonKey(name: 'street_type_full')
  final String? streetTypeFull;

  @JsonKey(name: 'street')
  final String? street;

  @JsonKey(name: 'house_fias_id')
  final String? houseFiasId;

  @JsonKey(name: 'house_kladr_id')
  final String? houseKladrId;

  @JsonKey(name: 'house_type')
  final String? houseType;

  @JsonKey(name: 'house_type_full')
  final String? houseTypeFull;

  @JsonKey(name: 'house')
  final String? house;

  @JsonKey(name: 'block_type')
  final String? blockType;

  @JsonKey(name: 'block_type_full')
  final String? blockTypeFull;

  @JsonKey(name: 'block')
  final String? block;

  @JsonKey(name: 'flat_fias_id')
  final String? flatFiasId;

  @JsonKey(name: 'flat_type')
  final String? flatType;

  @JsonKey(name: 'flat_type_full')
  final String? flatTypeFull;

  @JsonKey(name: 'flat')
  final String? flat;

  @JsonKey(name: 'flat_area')
  final String? flatArea;

  @JsonKey(name: 'square_meter_price')
  final String? squareMeterPrice;

  @JsonKey(name: 'flat_price')
  final String? flatPrice;

  @JsonKey(name: 'postal_box')
  final String? postalBox;

  @JsonKey(name: 'fias_id')
  final String? fiasId;

  @JsonKey(name: 'fias_code')
  final String? fiasCode;

  @JsonKey(name: 'fias_level')
  final String? fiasLevel;

  @JsonKey(name: 'fias_actuality_state')
  final String? fiasActualityState;

  @JsonKey(name: 'kladr_id')
  final String? kladrId;

  @JsonKey(name: 'geoname_id')
  final String? geonameId;

  @JsonKey(name: 'capital_marker')
  final String? capitalMarker;

  @JsonKey(name: 'okato')
  final String? okato;

  @JsonKey(name: 'oktmo')
  final String? oktmo;

  @JsonKey(name: 'tax_office')
  final String? taxOffice;

  @JsonKey(name: 'tax_office_legal')
  final String? taxOfficeLegal;

  @JsonKey(name: 'timezone')
  final String? timezone;

  /// 🚬🗿
  @JsonKey(name: 'geo_lat')
  final dynamic geoLat;

  ///
  ///          __
  ///         (::\
  ///   _____ _\::\__
  ///   /|    _(::(  \::\__
  ///   / |  _(::\::\  \::\:\
  ///   \ |_(::Y\""`.\__\_|""\   cjr
  ///   \___\/__\ ___________\
  ///   ( ( \ x \  __ _  _  _\                  (
  ///   |_:__\~  \ \_ |\| `(__\                ) )
  ///   |z:   \   \ \ |"\\_7 _)\              ( )
  ///   |i:    \   \            \              (,,_________________
  ///   |p:     \ # \____________\       _____  ;;_____________):::)
  ///   |p:      \  /  cancers   /      /XxXxX`-'xXxXxXxX`-\
  ///   (o:______ \/____________/      /____________________\
  @JsonKey(name: 'geo_lon')
  final dynamic geoLon;

  @JsonKey(name: 'beltway_hit')
  final String? beltwayHit;

  @JsonKey(name: 'beltway_distance')
  final String? beltwayDistance;

  /// 2020 json_annotation is scary
  // Actual Metro to be implemented.
  @JsonKey(name: 'metro')
  final List<dynamic>? metro;

  @JsonKey(name: 'qc')
  final dynamic qc;

  @JsonKey(name: 'qc_geo')
  final dynamic qcGeo;

  @JsonKey(name: 'qc_complete')
  final dynamic qcComplete;

  @JsonKey(name: 'qc_house')
  final dynamic qcHouse;

  @JsonKey(name: 'history_values')
  final List<String>? historyValues;

  @JsonKey(name: 'unparsed_parts')
  final String? unparsedParts;

  @JsonKey(name: 'source')
  final String? source;

  const SuggestionData(
    this.postalCode,
    this.country,
    this.countryIsoCode,
    this.federalDistrict,
    this.regionFiasId,
    this.regionKladrId,
    this.regionIsoCode,
    this.regionWithType,
    this.regionType,
    this.regionTypeFull,
    this.region,
    this.areaFiasId,
    this.areaKladrId,
    this.areaWithType,
    this.areaType,
    this.areaTypeFull,
    this.area,
    this.cityFiasId,
    this.cityKladrId,
    this.cityWithType,
    this.cityType,
    this.cityTypeFull,
    this.city,
    this.cityArea,
    this.cityDistrictFiasId,
    this.cityDistrictKladrId,
    this.cityDistrictWithType,
    this.cityDistrictType,
    this.cityDistrictTypeFull,
    this.cityDistrict,
    this.settlementFiasId,
    this.settlementKladrId,
    this.settlementWithType,
    this.settlementType,
    this.settlementTypeFull,
    this.settlement,
    this.streetFiasId,
    this.streetKladrId,
    this.streetWithType,
    this.streetType,
    this.streetTypeFull,
    this.street,
    this.houseFiasId,
    this.houseKladrId,
    this.houseType,
    this.houseTypeFull,
    this.house,
    this.blockType,
    this.blockTypeFull,
    this.block,
    this.flatFiasId,
    this.flatType,
    this.flatTypeFull,
    this.flat,
    this.flatArea,
    this.squareMeterPrice,
    this.flatPrice,
    this.postalBox,
    this.fiasId,
    this.fiasCode,
    this.fiasLevel,
    this.fiasActualityState,
    this.kladrId,
    this.geonameId,
    this.capitalMarker,
    this.okato,
    this.oktmo,
    this.taxOffice,
    this.taxOfficeLegal,
    this.timezone,
    this.geoLat,
    this.geoLon,
    this.beltwayHit,
    this.beltwayDistance,
    this.metro,
    this.qc,
    this.qcGeo,
    this.qcComplete,
    this.qcHouse,
    this.historyValues,
    this.unparsedParts,
    this.source,
  );

  factory SuggestionData.fromJson(Map<String, dynamic> json) =>
      _$SuggestionDataFromJson(json);

  Map<String, dynamic> toJson() => _$SuggestionDataToJson(this);
}
