import 'package:json_annotation/json_annotation.dart';

///Levels of `from_bound` and `to_bound` according to
///Dadata online API documentation https://confluence.hflabs.ru/pages/viewpage.action?pageId=285343795.
enum LevelBoundry {
  @JsonValue('country')
  country,
  @JsonValue('region')
  region,
  @JsonValue('area')
  area,
  @JsonValue('city')
  city,
  @JsonValue('settlement')
  settlement,
  @JsonValue('street')
  street,
  @JsonValue('house')
  house
}