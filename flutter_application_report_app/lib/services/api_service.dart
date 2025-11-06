import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/report.dart';

class ApiService {
  final String baseUrl = 'http://localhost:8080';

  Future<List<Report>> getReports() async {
    final response = await http.get(Uri.parse('$baseUrl/reports'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Report.fromJson(item)).toList();
    } else {
      throw Exception('Error al obtener los reportes');
    }
  }
}
