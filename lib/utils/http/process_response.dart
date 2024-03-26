import 'dart:convert';

import 'package:http/http.dart' as http;

import '../exceptions/app_exceptions.dart';

dynamic processResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
    case 201:
      var responseJson = jsonDecode(response.body);
      return responseJson;
    case 400:
      throw BadRequestException(message: jsonDecode(response.body));
    case 401:
      throw UnAuthorizedException(message: jsonDecode(response.body));
    case 403:
      throw ForbiddenException(message: jsonDecode(response.body));
    case 404:
      throw NotFoundException(
          message: jsonDecode(response.body) ?? 'Resource not found');
    case 500:
      throw InternalServerErrorException(
          message: jsonDecode(response.body) ?? 'Internal server error');
    default:
      throw FetchDataException(
          message: 'Error occured with code ${response.statusCode}');
  }
}
