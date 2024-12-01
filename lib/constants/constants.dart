import 'package:flutter/material.dart';

const inputFieldDecoration = InputDecoration(
  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
  focusedBorder:
      const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
  filled: true,
  // fillColor: Colors.blueGrey,
  contentPadding: const EdgeInsets.all(8),
);
