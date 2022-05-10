part of '../toasty_snackbar.dart';

extension ContextExtension on BuildContext {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showToastySnackbar(
      String title, String message, AlertType type) {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: _ToastySnackbar(
          alertTitle: title,
          alertMessage: message,
          alertType: type,
        ),
        behavior: SnackBarBehavior.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
