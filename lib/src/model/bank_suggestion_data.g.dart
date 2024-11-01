// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_suggestion_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankSuggestionData _$BankSuggestionDataFromJson(Map<String, dynamic> json) =>
    BankSuggestionData(
      unrestrictedValue: json['unrestricted_value'] as String?,
      bic: json['bic'] as String?,
      swift: json['swift'] as String?,
      inn: json['inn'] as String?,
      kpp: json['kpp'] as String?,
      correspondent_account: json['correspondent_account'] as String?,
    );

Map<String, dynamic> _$BankSuggestionDataToJson(BankSuggestionData instance) =>
    <String, dynamic>{
      'unrestricted_value': instance.unrestrictedValue,
      'bic': instance.bic,
      'swift': instance.swift,
      'inn': instance.inn,
      'kpp': instance.kpp,
      'correspondent_account': instance.correspondent_account,
    };
