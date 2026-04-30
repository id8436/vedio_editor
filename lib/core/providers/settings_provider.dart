import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppSettings {
  const AppSettings({
    this.themeMode = ThemeMode.system,
    this.photoDurationSec = 3,
    this.defaultExportPreset = 'hd720',
  });

  final ThemeMode themeMode;

  /// Duration in seconds for each still-image (photo) clip.
  final int photoDurationSec;

  /// Default export preset key: 'hd720' or 'fhd1080'.
  final String defaultExportPreset;

  AppSettings copyWith({
    ThemeMode? themeMode,
    int? photoDurationSec,
    String? defaultExportPreset,
  }) {
    return AppSettings(
      themeMode: themeMode ?? this.themeMode,
      photoDurationSec: photoDurationSec ?? this.photoDurationSec,
      defaultExportPreset: defaultExportPreset ?? this.defaultExportPreset,
    );
  }
}

class SettingsNotifier extends Notifier<AppSettings> {
  @override
  AppSettings build() => const AppSettings();

  void setThemeMode(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
  }

  void setPhotoDurationSec(int sec) {
    state = state.copyWith(photoDurationSec: sec.clamp(1, 10));
  }

  void setDefaultExportPreset(String preset) {
    state = state.copyWith(defaultExportPreset: preset);
  }
}

final NotifierProvider<SettingsNotifier, AppSettings> settingsProvider =
    NotifierProvider<SettingsNotifier, AppSettings>(SettingsNotifier.new);
