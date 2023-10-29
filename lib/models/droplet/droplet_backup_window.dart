import 'package:flutter/material.dart';

@immutable
class DropletBackupWindow {
  final DateTime start;
  final DateTime end;

  const DropletBackupWindow({
    required this.start,
    required this.end,
  });

  factory DropletBackupWindow.fromJson(Map<String, dynamic> json) {
    return DropletBackupWindow(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'start': start.toIso8601String(),
      'end': end.toIso8601String(),
    };
  }
}
