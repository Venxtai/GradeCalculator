import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? getLettergrade(int? score) {
  // Add input validation to ensure the user has entered a valid score (0-100). If the user did not enter a valid score, display an error message (e.g. “Not a number” OR “out of range”)
  if (score == null) {
    return "Not a number";
  } else if (score < 0 || score > 100) {
    return "Out of range";
  } else {
    // Calculate letter grade based on score
    if (score >= 90) {
      return "A";
    } else if (score >= 80) {
      return "B";
    } else if (score >= 70) {
      return "C";
    } else if (score >= 60) {
      return "D";
    } else {
      return "F";
    }
  }
}
