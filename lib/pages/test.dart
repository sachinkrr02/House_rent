import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RapidApiData extends StatefulWidget {
  @override
  _RapidApiDataState createState() => _RapidApiDataState();
}

class _RapidApiDataState extends State<RapidApiData> {
  Future<Map<String, dynamic>> fetchData() async {
    final String apiUrl =
        'apartment-list.p.rapidapi.com/properties/p153763 HTTP/1.1';
    final String apiKey = '29d0623696msh726b9d4c80529edp155b90jsnb3d2eaaf5172';

    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'x-rapidapi-key': apiKey,
        'x-rapidapi-host': 'API_HOST',
      },
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RapidAPI Data'),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            // Display your data here
            final data = snapshot.data;
            return Center(
              child: Text(data.toString()),
            );
          }
        },
      ),
    );
  }
}
