import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'extensions/context_extensions.dart';

class _ToastySnackbar extends StatelessWidget {
  final String alertTitle;
  final String alertMessage;
  final AlertType alertType;

  const _ToastySnackbar({
    Key? key,
    required this.alertTitle,
    required this.alertMessage,
    required this.alertType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<AlertType, Color> _typeBoxColor = {
      AlertType.danger: const Color(0xFFC72C41),
      AlertType.error: const Color(0xFFF64B3C),
      AlertType.warning: const Color(0xFFEF8D32),
      AlertType.detail: const Color(0xFF4E8D7C),
      AlertType.info: const Color(0xFF3282B8),
      AlertType.success: const Color(0xFF0C7040),
      AlertType.primary: const Color(0xFF0070E0)
    };

    Map<AlertType, Color> _typeIconColor = {
      AlertType.danger: const Color(0xFF801336),
      AlertType.error: const Color(0xFFC81912),
      AlertType.warning: const Color(0xFFCC561E),
      AlertType.detail: const Color(0xFF3E7063),
      AlertType.info: const Color(0xFF0F4C75),
      AlertType.success: const Color(0xFF004E32),
      AlertType.primary: const Color(0xFF05478A)
    };
    // 0xFF004E32

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 90,
          decoration: BoxDecoration(
            color: _typeBoxColor[alertType],
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 48,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      alertTitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      alertMessage,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            child: Stack(
              children: [
                SvgPicture.asset(
                  "packages/toasty_snackbar/assets/svg/bubbles.svg",
                  height: 48,
                  width: 40,
                  color: _typeIconColor[alertType],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 0,
          child: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "packages/toasty_snackbar/assets/svg/fail.svg",
                  color: _typeIconColor[alertType],
                  height: 40,
                ),
                Positioned(
                  top: 10,
                  child: SvgPicture.asset(
                    "packages/toasty_snackbar/assets/svg/close.svg",
                    height: 16,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

enum AlertType { error, warning, success, info, primary, danger, detail }
