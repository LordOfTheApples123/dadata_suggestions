// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankSuggestion _$BankSuggestionFromJson(Map<String, dynamic> json) =>
    BankSuggestion(
      value: json['value'] as String?,
      unrestrictedValue: json['unrestricted_value'] as String?,
      data: json['data'] == null
          ? null
          : BankSuggestionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BankSuggestionToJson(BankSuggestion instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestrictedValue,
      'data': instance.data?.toJson(),
    };
