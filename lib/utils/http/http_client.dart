import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ecommmerce/utils/http/process_response.dart';
import 'package:http/http.dart' as http;

import '../exceptions/app_exceptions.dart';

/// This abstract class provides methods for making HTTP requests with various functionalities.
/// It includes support for GET, POST, PUT, PATCH, and DELETE methods, along with
/// optional token handling and query parameters.

abstract class AppHttpClient {
  /// Timeout value (in seconds) used for HTTP requests.
  static const timeoutException = 20;

  /// Default headers used for HTTP requests.
  static Map<String, String> headers = {
    "accept": "application/json",
    "Content-Type": "application/json",
  };

  // ================== GET ====================== //
  static Future<dynamic> get({
    required String endpoint,
    String? token,
    Map<String, String>? query,
  }) async {
    try {
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
      Uri uri = query != null
          ? Uri.parse(endpoint).replace(queryParameters: query)
          : Uri.parse(endpoint);
      var response = await http
          .get(uri, headers: headers)
          .timeout(const Duration(seconds: timeoutException));
      return processResponse(response);
    } on SocketException {
      throw FetchDataException(message: "Connection Failed.");
    } on TimeoutException {
      throw ApiNotRespondingException(message: "Server not responded in time.");
    }
  }

  // ================== POST ====================== //
  static Future<dynamic> post(
      {required String endpoint, String? token, Map? payload}) async {
    Map body = payload ?? {};
    try {
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
      var response = await http
          .post(Uri.parse(endpoint), body: jsonEncode(body), headers: headers)
          .timeout(const Duration(seconds: timeoutException));
      return processResponse(response);
    } on SocketException {
      throw FetchDataException(message: "Connection Failed.");
    } on TimeoutException {
      throw ApiNotRespondingException(message: "Server not responded in time.");
    }
  }

  // ================== PUT ====================== //
  static Future<dynamic> put({
    required String endpoint,
    String? token,
    required Map body,
  }) async {
    try {
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
      var response = await http
          .put(Uri.parse(endpoint), body: jsonEncode(body), headers: headers)
          .timeout(const Duration(seconds: timeoutException));
      return processResponse(response);
    } on SocketException {
      throw FetchDataException(message: "Connection Failed.");
    } on TimeoutException {
      throw ApiNotRespondingException(message: "Server not responded in time.");
    }
  }

  // ================== PATCH ====================== //
  static Future<dynamic> patch(
      {required String endpoint, String? token, required Map body}) async {
    try {
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
      var response = await http
          .patch(Uri.parse(endpoint), body: jsonEncode(body), headers: headers)
          .timeout(const Duration(seconds: timeoutException));
      return processResponse(response);
    } on SocketException {
      throw FetchDataException(message: "Connection Failed.");
    } on TimeoutException {
      throw ApiNotRespondingException(message: "Server not responded in time.");
    }
  }

  // ================== DELETE ====================== //
  static Future<dynamic> delete(
      {required String endpoint, String? token}) async {
    try {
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
      var response = await http
          .delete(Uri.parse(endpoint), headers: headers)
          .timeout(const Duration(seconds: timeoutException));
      return processResponse(response);
    } on SocketException {
      throw FetchDataException(message: "Connection Failed.");
    } on TimeoutException {
      throw ApiNotRespondingException(message: "Server not responded in time.");
    }
  }
}

// Rights reserved notice
/// © 2024 Made with love and coffe, Sidahmed Belkadi
