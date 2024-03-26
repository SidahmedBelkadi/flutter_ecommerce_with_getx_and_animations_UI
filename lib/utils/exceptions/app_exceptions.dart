class AppException implements Exception {
  final String title;
  final String message;

  AppException({required this.title, required this.message});
}

class BadRequestException extends AppException {
  BadRequestException({required String message})
      : super(title: 'Bad Request', message: message);
}

class FetchDataException extends AppException {
  FetchDataException({
    required String message,
  }) : super(title: 'Unable to process', message: message);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException({required String message})
      : super(title: 'API Not Responding', message: message);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException({required String message})
      : super(title: 'Unauthorized Access', message: message);
}

class ForbiddenException extends AppException {
  ForbiddenException({required String message})
      : super(title: 'Forbidden Access', message: message);
}

class NotFoundException extends AppException {
  NotFoundException({required String message})
      : super(title: 'Resource Not Found', message: message);
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException({required String message})
      : super(title: 'Internal Server Error', message: message);
}

class NoInternetConnectionException extends AppException {
  NoInternetConnectionException({required String message})
      : super(title: 'No Internet Connection', message: message);
}
