import 'dart:convert';

import 'package:hef/src/data/globals.dart';
import 'package:hef/src/data/models/analytics_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'analytics_api.g.dart';

@riverpod
Future<List<AnalyticsModel>> fetchAnalytics(
    FetchAnalyticsRef ref, String? type) async {
  Uri url = Uri.parse('$baseUrl/analytic');

  if (type != null && type != '') {
    url = Uri.parse('$baseUrl/analytic?filter=$type');
  }
  print('Requesting URL: $url');
  final response = await http.get(
    url,
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    },
  );

  print(json.decode(response.body)['status']);
  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body)['data'];
    print(response.body);
    List<AnalyticsModel> promotions = [];

    for (var item in data) {
      promotions.add(AnalyticsModel.fromJson(item));
    }
    print(promotions);
    return promotions;
  } else {
    print(json.decode(response.body)['message']);

    throw Exception(json.decode(response.body)['message']);
  }
}