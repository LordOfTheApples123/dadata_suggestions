// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankSuggestionsResponse _$BankSuggestionsResponseFromJson(
        Map<String, dynamic> json) =>
    BankSuggestionsResponse(
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => BankSuggestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BankSuggestionsResponseToJson(
        BankSuggestionsResponse instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };
