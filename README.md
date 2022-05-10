# toasty_snackbar

An alert toast package to show snackbar easily. This package helps you to render a dynamic alert toast in your Flutter app

# Support

This package supports usage on both Android and iOS builds.

## Adding to your flutter project

Add [`toasty_snackbar`](https://pub.dartlang.org) as a dependency in your pubspec.yaml file

``` yaml
toasty_snackbar: ^0.0.1
```

## Use the package

Import the library in your dart file

``` dart
import 'package:toasty_snackbar/toasty_snackbar.dart';
```

## Example 1

``` dart
  @override
  Widget build(BuildContext context) {
    String title = "Alert Test Title";
    String message =
        "Lorem ipsum dolor sit amet. Qui quos perferendis qui harum voluptatem a dolorum minima est voluptas veritatis. Nam commodi unde quo adipisci itaque sed autem veritatis est mollitia quam. Est delectus ipsum et beatae quasi ea molestias voluptatibus quo Quis culpa ut atque consequatur sit explicabo iste ea natus cumque. Aut quia aliquam 33 nostrum tempora et voluptates quia.";
    return Center(context.showToastySnackbar(title, message, AlertType.info);

    );
  }
}
```
or you can trigger with button

## Example 2

``` dart
ElevatedButton(
    onPressed: () {
      context.showToastySnackbar(title, message, AlertType.success);
    },
    child: const Text("Show Snackbar: Success"),
)
```



Check [examples](https://github.com/kanieren/toasty_snackbar/tree/master/example)

## Screenshots

![Toasty-Snackbar](https://i.imgur.com/F56sZwm.gif)
