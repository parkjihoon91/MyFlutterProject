import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {

  static bool isPlatformType = false; // true: ios, false: Android

  static Future<bool?> showOkNoDialog({
    required BuildContext context,
    required String title,
    required String message,
  }) async {
    return await showDialog<bool?>(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        if (Utils.isPlatformType) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              CupertinoButton(
                child: const Text('취소'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              CupertinoButton(
                child: const Text('확인'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              )
            ],
          );
        }

        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            MaterialButton(
              child: const Text('취소'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            MaterialButton(
              child: const Text('확인'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            )
          ],
        );
      },
    );
  }

}