library dadata_suggestions;

export 'src/model/address_response.dart';
export 'src/model/address_suggestion.dart';
export 'src/model/address_suggestion_constraint.dart';
export 'src/model/address_suggestion_priority.dart';
export 'src/model/address_suggestion_radius_constraint.dart';
export 'src/model/address_suggestion_request.dart';
export 'src/model/level_boundry.dart';
export 'src/model/revgeocode_suggestion_request.dart';
export 'src/model/suggestion_data.dart';
export 'src/model/bank_suggestion.dart';
export 'src/model/bank_suggestion_data.dart';
export 'src/model/bank_suggestions_request.dart';
export 'src/model/bank_suggestions_response.dart';

import 'dart:convert';

import 'package:dadata_suggestions/src/dadata_service.dart';
import 'package:dadata_suggestions/src/model/bank_suggestion.dart';
import 'package:dadata_suggestions/src/model/bank_suggestions_request.dart';
import 'package:dadata_suggestions/src/model/bank_suggestions_response.dart';
import 'package:dadata_suggestions/src/token_interceptor.dart';
import 'package:dio/dio.dart';

import 'src/constants.dart';
import 'src/model/address_suggestion_request.dart';
import 'src/model/revgeocode_suggestion_request.dart';
import 'src/model/address_response.dart';
import 'package:http/http.dart';

part 'src/dadata_client.dart';

/// ⚠️⚠️⚠️ATTENTION⚠️⚠️⚠️
/// Может выдавать некорректные результаты для некоторых адресов, из-за
/// чего получим трудности в оформлении заказа.
/// Во избажание подобных ситуаций Дадата рекомендует использовать
/// подсказки из апи только для автокомплита, но не для валидации.
///
/// Над методами комментарии со ссылкой на доку и с вырезкой из доки
class DadataSuggestions {
  final DadataClient _client;

  factory DadataSuggestions(String token) {
    return DadataSuggestions._internal(DadataClient(token));
  }

  DadataSuggestions._internal(this._client);

  /// https://dadata.ru/api/suggest/address/
  ///
  /// API: подсказки по адресам
  ///
  /// Ищет адреса по любой части адреса от региона до квартиры
  /// («самара авроры 7 12» → «443017, Самарская обл, г Самара,
  /// ул Авроры, д 7, кв 12»).
  ///
  /// Также ищет по почтовому индексу
  /// («105568» → «г Москва, ул Магнитогорская»).
  Future<AddressResponse> suggest(
    AddressSuggestionRequest request,
  ) async {
    final resp = await _client.suggest(request);
    return resp;
  }

  /// https://dadata.ru/api/suggest/bank/
  ///
  /// API: подсказки по банкам
  ///
  /// Ищет кредитные организации:
  ///
  /// по БИК,
  /// SWIFT,
  /// ИНН,
  /// ИНН + КПП,
  /// названию,
  /// адресу до улицы.
  /// ✔️ Фильтрует по типу: банки, НКО и филиалы.
  ///
  /// ✔️ Фильтрует по региону или городу.
  ///
  /// ✔️ Умеет искать как действующие банки, так и банки на ликвидации.
  ///
  /// ✔️ Учитывает, где вы находитесь (геолокация до города).
  Future<BankSuggestionsResponse> suggestBank(
      BankSuggestionRequest request) async {
    return await _client.suggestBank(request);
  }

  /// https://dadata.ru/api/geolocate/
  ///
  /// API: обратное геокодирование (адрес по координатам)
  ///
  /// Находит ближайшие адреса (дома, улицы, города)
  /// по географическим координатам. Только для России.
  Future<AddressResponse> revGeocode(
    RevgeocodeSuggestionRequest request,
  ) async {
    final resp = await _client.revGeocode(request);
    return resp;
  }
}
