// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_suggestions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankSuggestionRequest _$BankSuggestionRequestFromJson(
        Map<String, dynamic> json) =>
    BankSuggestionRequest(
      query: json['query'] as String,
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const ["BANK"],
    );

Map<String, dynamic> _$BankSuggestionRequestToJson(
        BankSuggestionRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'type': instance.type,
    };
