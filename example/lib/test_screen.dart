import 'package:flutter/material.dart';
import 'package:toasty_snackbar/toasty_snackbar.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = "Alert Test Title";
    String message =
        "Lorem ipsum dolor sit amet. Qui quos perferendis qui harum voluptatem a dolorum minima est voluptas veritatis. Nam commodi unde quo adipisci itaque sed autem veritatis est mollitia quam. Est delectus ipsum et beatae quasi ea molestias voluptatibus quo Quis culpa ut atque consequatur sit explicabo iste ea natus cumque. Aut quia aliquam 33 nostrum tempora et voluptates quia.";
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.success);
            },
            child: const Text("Show Snackbar: Success"),
          ),
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.warning);
            },
            child: const Text("Show Snackbar: Warning"),
          ),
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.error);
            },
            child: const Text("Show Snackbar: Error"),
          ),
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.danger);
            },
            child: const Text("Show Snackbar: Danger"),
          ),
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.primary);
            },
            child: const Text("Show Snackbar: Primary"),
          ),
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.detail);
            },
            child: const Text("Show Snackbar: Detail"),
          ),
          ElevatedButton(
            onPressed: () {
              context.showToastySnackbar(title, message, AlertType.info);
            },
            child: const Text("Show Snackbar: Info"),
          ),
        ],
      ),
    );
  }
}
