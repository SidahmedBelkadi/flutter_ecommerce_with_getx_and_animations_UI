import 'package:ecommmerce/utils/helpers/snackbar.helper.dart';

import '../exceptions/app_exceptions.dart';

mixin ErrorHandler {
  void handleError(error) {
    if (error is BadRequestException) {
      AppSnackBar.errorSnackBar(message: error.message);
    } else if (error is FetchDataException) {
      AppSnackBar.errorSnackBar(message: error.message);
    } else if (error is ApiNotRespondingException) {
      AppSnackBar.errorSnackBar(message: "Oops!, it took longer to respond.");
    } else if (error is UnAuthorizedException) {
      AppSnackBar.errorSnackBar(message: error.message);
    } else if (error is ForbiddenException) {
      AppSnackBar.errorSnackBar(message: error.message);
    } else if (error is NotFoundException) {
      AppSnackBar.errorSnackBar(message: error.message);
    } else if (error is InternalServerErrorException) {
      AppSnackBar.errorSnackBar(message: error.message);
    } else if (error is NoInternetConnectionException) {
      AppSnackBar.errorSnackBar(message: error.message);
    }
  }
}
