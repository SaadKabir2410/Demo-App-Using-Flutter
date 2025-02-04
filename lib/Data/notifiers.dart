// value notifier = it  holds the data
// value listeanble Builder = listen to the data (In this case dont need "Setstate widget")

import 'package:flutter/material.dart';

ValueNotifier <int> selectedPagesNotifier = ValueNotifier(0);
ValueNotifier <bool> isDarkModeNotifier = ValueNotifier(true);