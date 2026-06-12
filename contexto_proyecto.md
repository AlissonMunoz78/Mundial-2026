# CONTEXTO COMPLETO DEL PROYECTO

Generado automáticamente por export_context_flutter.dart


# ANÁLISIS DE ARQUITECTURA

## ACIERTOS

✅ Feature "matches" contiene data/domain/presentation.
✅ Feature "match_detail" contiene data/domain/presentation.


# ESTRUCTURA DEL PROYECTO

📄 .gitignore
📄 .metadata
📄 README.md
📄 analysis_options.yaml
📁 android
    📄 .gitignore
    📁 app
        📄 build.gradle.kts
        📁 src
            📁 debug
                📄 AndroidManifest.xml
            📁 main
                📄 AndroidManifest.xml
                📁 java
                    📁 io
                        📁 flutter
                            📁 plugins
                                📄 GeneratedPluginRegistrant.java
                📁 kotlin
                    📁 com
                        📁 example
                            📁 mundial_2026
                                📄 MainActivity.kt
                📁 res
                    📁 drawable
                        📄 launch_background.xml
                    📁 drawable-v21
                        📄 launch_background.xml
                    📁 mipmap-hdpi
                        📄 ic_launcher.png
                    📁 mipmap-mdpi
                        📄 ic_launcher.png
                    📁 mipmap-xhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxhdpi
                        📄 ic_launcher.png
                    📁 mipmap-xxxhdpi
                        📄 ic_launcher.png
                    📁 values
                        📄 styles.xml
                    📁 values-night
                        📄 styles.xml
            📁 profile
                📄 AndroidManifest.xml
    📄 build.gradle.kts
    📁 gradle
        📁 wrapper
            📄 gradle-wrapper.jar
            📄 gradle-wrapper.properties
    📄 gradle.properties
    📄 gradlew
    📄 gradlew.bat
    📄 local.properties
    📄 mundial_2026_android.iml
    📄 settings.gradle.kts
📁 assets
    📁 icon
        📄 icon.png
📁 ios
    📄 .gitignore
    📁 Flutter
        📄 AppFrameworkInfo.plist
        📄 Debug.xcconfig
        📄 Generated.xcconfig
        📄 Release.xcconfig
        📁 ephemeral
            📄 flutter_lldb_helper.py
            📄 flutter_lldbinit
        📄 flutter_export_environment.sh
    📁 Runner
        📄 AppDelegate.swift
        📁 Assets.xcassets
            📁 AppIcon.appiconset
                📄 Contents.json
                📄 Icon-App-1024x1024@1x.png
                📄 Icon-App-20x20@1x.png
                📄 Icon-App-20x20@2x.png
                📄 Icon-App-20x20@3x.png
                📄 Icon-App-29x29@1x.png
                📄 Icon-App-29x29@2x.png
                📄 Icon-App-29x29@3x.png
                📄 Icon-App-40x40@1x.png
                📄 Icon-App-40x40@2x.png
                📄 Icon-App-40x40@3x.png
                📄 Icon-App-50x50@1x.png
                📄 Icon-App-50x50@2x.png
                📄 Icon-App-57x57@1x.png
                📄 Icon-App-57x57@2x.png
                📄 Icon-App-60x60@2x.png
                📄 Icon-App-60x60@3x.png
                📄 Icon-App-72x72@1x.png
                📄 Icon-App-72x72@2x.png
                📄 Icon-App-76x76@1x.png
                📄 Icon-App-76x76@2x.png
                📄 Icon-App-83.5x83.5@2x.png
            📁 LaunchImage.imageset
                📄 Contents.json
                📄 LaunchImage.png
                📄 LaunchImage@2x.png
                📄 LaunchImage@3x.png
                📄 README.md
        📁 Base.lproj
            📄 LaunchScreen.storyboard
            📄 Main.storyboard
        📄 GeneratedPluginRegistrant.h
        📄 GeneratedPluginRegistrant.m
        📄 Info.plist
        📄 Runner-Bridging-Header.h
        📄 SceneDelegate.swift
    📁 Runner.xcodeproj
        📄 project.pbxproj
        📁 project.xcworkspace
            📄 contents.xcworkspacedata
            📁 xcshareddata
                📄 IDEWorkspaceChecks.plist
                📄 WorkspaceSettings.xcsettings
        📁 xcshareddata
            📁 xcschemes
                📄 Runner.xcscheme
    📁 Runner.xcworkspace
        📄 contents.xcworkspacedata
        📁 xcshareddata
            📄 IDEWorkspaceChecks.plist
            📄 WorkspaceSettings.xcsettings
    📁 RunnerTests
        📄 RunnerTests.swift
📁 lib
    📁 core
        📁 network
            📄 dio_client.dart
    📁 features
        📁 match_detail
            📁 data
                📁 datasources
                    📄 match_detail_remote_datasource.dart
                📁 models
                    📄 match_detail_model.dart
                📁 repositories
                    📄 match_detail_repository_impl.dart
            📁 domain
                📁 entities
                    📄 match_detail_entity.dart
                📁 respositories
                    📄 match_detail_repository.dart
                📁 usecases
                    📄 get_match_detail.dart
            📁 presentation
                📁 screens
                    📄 match_detail_screen.dart
        📁 matches
            📁 data
                📁 datasources
                    📄 matches_remote_datasource.dart
                📁 models
                    📄 match_model.dart
                📁 repositories
                    📄 matches_repository_impl.dart
            📁 domain
                📁 entities
                    📄 match_entity.dart
                📁 repositories
                    📄 matches_repository.dart
                📁 usecases
                    📄 get_matches_by_date.dart
            📁 presentation
                📁 screens
                    📄 home_screen.dart
                📁 widgets
                    📄 match_card.dart
    📄 main.dart
📄 mundial_2026.iml
📄 pubspec.yaml
📁 test
    📄 widget_test.dart


# CONTENIDO DE LOS ARCHIVOS

          
================================================
📄 ARCHIVO: .gitignore
================================================

# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.build/
.buildlog/
.history
.svn/
.swiftpm/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins-dependencies
.pub-cache/
.pub/
/build/
/coverage/

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Android Studio will place build artifacts here
/android/app/debug
/android/app/profile
/android/app/release


          
================================================
📄 ARCHIVO: .metadata
================================================

# This file tracks properties of this Flutter project.
# Used by Flutter tool to assess capabilities and perform upgrades etc.
#
# This file should be version controlled and should not be manually edited.

version:
  revision: "db50e20168db8fee486b9abf32fc912de3bc5b6a"
  channel: "stable"

project_type: app

# Tracks metadata for the flutter migrate command
migration:
  platforms:
    - platform: root
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
    - platform: android
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
    - platform: ios
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
    - platform: linux
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
    - platform: macos
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
    - platform: web
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
    - platform: windows
      create_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a
      base_revision: db50e20168db8fee486b9abf32fc912de3bc5b6a

  # User provided section

  # List of Local paths (relative to this file) that should be
  # ignored by the migrate tool.
  #
  # Files that are not part of the templates will be ignored by default.
  unmanaged_files:
    - 'lib/main.dart'
    - 'ios/Runner.xcodeproj/project.pbxproj'


          
================================================
📄 ARCHIVO: analysis_options.yaml
================================================

# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options


          
================================================
📄 ARCHIVO: android\.gitignore
================================================

gradle-wrapper.jar
/.gradle
/captures/
/gradlew
/gradlew.bat
/local.properties
GeneratedPluginRegistrant.java
.cxx/

# Remember to never publicly share your keystore.
# See https://flutter.dev/to/reference-keystore
key.properties
**/*.keystore
**/*.jks


          
================================================
📄 ARCHIVO: ios\.gitignore
================================================

**/dgph
*.mode1v3
*.mode2v3
*.moved-aside
*.pbxuser
*.perspectivev3
**/*sync/
.sconsign.dblite
.tags*
**/.vagrant/
**/DerivedData/
Icon?
**/Pods/
**/.symlinks/
profile
xcuserdata
**/.generated/
Flutter/App.framework
Flutter/Flutter.framework
Flutter/Flutter.podspec
Flutter/Generated.xcconfig
Flutter/ephemeral/
Flutter/app.flx
Flutter/app.zip
Flutter/flutter_assets/
Flutter/flutter_export_environment.sh
ServiceDefinitions.json
Runner/GeneratedPluginRegistrant.*

# Exceptions to above rules.
!default.mode1v3
!default.mode2v3
!default.pbxuser
!default.perspectivev3


          
================================================
📄 ARCHIVO: ios\Flutter\Debug.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Flutter\Generated.xcconfig
================================================

// This is a generated file; do not edit or check into version control.
FLUTTER_ROOT=C:\Flutter\flutter
FLUTTER_APPLICATION_PATH=C:\Users\APP MOVILES\Downloads\FlutterProyects\mundial_2026
COCOAPODS_PARALLEL_CODE_SIGN=true
FLUTTER_TARGET=lib\main.dart
FLUTTER_BUILD_DIR=build
FLUTTER_BUILD_NAME=1.0.0
FLUTTER_BUILD_NUMBER=1
EXCLUDED_ARCHS[sdk=iphonesimulator*]=i386
EXCLUDED_ARCHS[sdk=iphoneos*]=armv7
DART_OBFUSCATION=false
TRACK_WIDGET_CREATION=true
TREE_SHAKE_ICONS=false
PACKAGE_CONFIG=.dart_tool/package_config.json


          
================================================
📄 ARCHIVO: ios\Flutter\Release.xcconfig
================================================

#include "Generated.xcconfig"


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\AppIcon.appiconset\Contents.json
================================================

{"images":[{"size":"20x20","idiom":"iphone","filename":"Icon-App-20x20@2x.png","scale":"2x"},{"size":"20x20","idiom":"iphone","filename":"Icon-App-20x20@3x.png","scale":"3x"},{"size":"29x29","idiom":"iphone","filename":"Icon-App-29x29@1x.png","scale":"1x"},{"size":"29x29","idiom":"iphone","filename":"Icon-App-29x29@2x.png","scale":"2x"},{"size":"29x29","idiom":"iphone","filename":"Icon-App-29x29@3x.png","scale":"3x"},{"size":"40x40","idiom":"iphone","filename":"Icon-App-40x40@2x.png","scale":"2x"},{"size":"40x40","idiom":"iphone","filename":"Icon-App-40x40@3x.png","scale":"3x"},{"size":"57x57","idiom":"iphone","filename":"Icon-App-57x57@1x.png","scale":"1x"},{"size":"57x57","idiom":"iphone","filename":"Icon-App-57x57@2x.png","scale":"2x"},{"size":"60x60","idiom":"iphone","filename":"Icon-App-60x60@2x.png","scale":"2x"},{"size":"60x60","idiom":"iphone","filename":"Icon-App-60x60@3x.png","scale":"3x"},{"size":"20x20","idiom":"ipad","filename":"Icon-App-20x20@1x.png","scale":"1x"},{"size":"20x20","idiom":"ipad","filename":"Icon-App-20x20@2x.png","scale":"2x"},{"size":"29x29","idiom":"ipad","filename":"Icon-App-29x29@1x.png","scale":"1x"},{"size":"29x29","idiom":"ipad","filename":"Icon-App-29x29@2x.png","scale":"2x"},{"size":"40x40","idiom":"ipad","filename":"Icon-App-40x40@1x.png","scale":"1x"},{"size":"40x40","idiom":"ipad","filename":"Icon-App-40x40@2x.png","scale":"2x"},{"size":"50x50","idiom":"ipad","filename":"Icon-App-50x50@1x.png","scale":"1x"},{"size":"50x50","idiom":"ipad","filename":"Icon-App-50x50@2x.png","scale":"2x"},{"size":"72x72","idiom":"ipad","filename":"Icon-App-72x72@1x.png","scale":"1x"},{"size":"72x72","idiom":"ipad","filename":"Icon-App-72x72@2x.png","scale":"2x"},{"size":"76x76","idiom":"ipad","filename":"Icon-App-76x76@1x.png","scale":"1x"},{"size":"76x76","idiom":"ipad","filename":"Icon-App-76x76@2x.png","scale":"2x"},{"size":"83.5x83.5","idiom":"ipad","filename":"Icon-App-83.5x83.5@2x.png","scale":"2x"},{"size":"1024x1024","idiom":"ios-marketing","filename":"Icon-App-1024x1024@1x.png","scale":"1x"}],"info":{"version":1,"author":"xcode"}}

          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\Contents.json
================================================

{
  "images" : [
    {
      "idiom" : "universal",
      "filename" : "LaunchImage.png",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@2x.png",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "filename" : "LaunchImage@3x.png",
      "scale" : "3x"
    }
  ],
  "info" : {
    "version" : 1,
    "author" : "xcode"
  }
}


          
================================================
📄 ARCHIVO: ios\Runner\Assets.xcassets\LaunchImage.imageset\README.md
================================================

# Launch Screen Assets

You can customize the launch screen with your own desired assets by replacing the image files in this directory.

You can also do it by opening your Flutter project's Xcode project with `open ios/Runner.xcworkspace`, selecting `Runner/Assets.xcassets` in the Project Navigator and dropping in the desired images.

          
================================================
📄 ARCHIVO: lib\core\network\dio_client.dart
================================================

import 'package:dio/dio.dart';

class DioClient {
  static const String _baseUrl = 'https://api.football-data.org/v4';
  static const String _apiKey = '495a95ccf8104584854676f9392e5139';

  static Dio get instance {
    final dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'X-Auth-Token': _apiKey,
        },
      ),
    );
    return dio;
  }
}

          
================================================
📄 ARCHIVO: lib\features\matches\data\datasources\matches_remote_datasource.dart
================================================

import '../../../../core/network/dio_client.dart';
import '../models/match_model.dart';

//Llama a GET /competitions/WC/matches?dateFrom=&dateTo=
abstract class MatchesRemoteDatasource {
  Future<List<MatchModel>> getMatchesByDate(DateTime date);
}

class MatchesRemoteDatasourceImpl implements MatchesRemoteDatasource {
  @override
  Future<List<MatchModel>> getMatchesByDate(DateTime date) async {
    final dio = DioClient.instance;
    final dateStr =
        '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';

    final response = await dio.get(
      '/competitions/WC/matches',
      queryParameters: {
        'dateFrom': dateStr,
        'dateTo': dateStr,
      },
    );

    final matches = response.data['matches'] as List<dynamic>;
    return matches
        .map((m) => MatchModel.fromJson(m as Map<String, dynamic>))
        .toList();
  }
}

          
================================================
📄 ARCHIVO: lib\features\matches\data\models\match_model.dart
================================================

import '../../domain/entities/match_entity.dart';

class MatchModel extends MatchEntity {
  const MatchModel({
    required super.id,
    required super.homeTeam,
    required super.awayTeam,
    super.homeScore,
    super.awayScore,
    required super.status,
    super.venue,
    super.group,
    required super.stage,
    required super.utcDate,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    final score = json['score'] as Map<String, dynamic>?;
    final fullTime = score?['fullTime'] as Map<String, dynamic>?;
    final halfTime = score?['halfTime'] as Map<String, dynamic>?;

    // Usa fullTime si hay marcador, si no halfTime
    final homeScore = fullTime?['home'] as int? ?? halfTime?['home'] as int?;
    final awayScore = fullTime?['away'] as int? ?? halfTime?['away'] as int?;

    return MatchModel(
      id: json['id'] as int,
      homeTeam: (json['homeTeam'] as Map<String, dynamic>)['shortName'] as String? ??
          (json['homeTeam'] as Map<String, dynamic>)['name'] as String,
      awayTeam: (json['awayTeam'] as Map<String, dynamic>)['shortName'] as String? ??
          (json['awayTeam'] as Map<String, dynamic>)['name'] as String,
      homeScore: homeScore,
      awayScore: awayScore,
      status: json['status'] as String,
      venue: null, // football-data.org no siempre provee venue en listado
      group: json['group'] as String?,
      stage: json['stage'] as String,
      utcDate: DateTime.parse(json['utcDate'] as String),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\matches\data\repositories\matches_repository_impl.dart
================================================

import '../../domain/entities/match_entity.dart';
import '../../domain/repositories/matches_repository.dart';
import '../datasources/matches_remote_datasource.dart';

class MatchesRepositoryImpl implements MatchesRepository {
  final MatchesRemoteDatasource remoteDatasource;

  MatchesRepositoryImpl(this.remoteDatasource);

  @override
  Future<List<MatchEntity>> getMatchesByDate(DateTime date) async {
    return await remoteDatasource.getMatchesByDate(date);
  }
}

          
================================================
📄 ARCHIVO: lib\features\matches\domain\entities\match_entity.dart
================================================

class MatchEntity {
  final int id;
  final String homeTeam;
  final String awayTeam;
  final int? homeScore;
  final int? awayScore;
  final String status;
  final String? venue;
  final String? group;
  final String stage;
  final DateTime utcDate;

  const MatchEntity({
    required this.id,
    required this.homeTeam,
    required this.awayTeam,
    this.homeScore,
    this.awayScore,
    required this.status,
    this.venue,
    this.group,
    required this.stage,
    required this.utcDate,
  });
}

          
================================================
📄 ARCHIVO: lib\features\matches\domain\repositories\matches_repository.dart
================================================

//HU-01  HU-02
import '../entities/match_entity.dart';

abstract class MatchesRepository {
  Future<List<MatchEntity>> getMatchesByDate(DateTime date);
}

          
================================================
📄 ARCHIVO: lib\features\matches\domain\usecases\get_matches_by_date.dart
================================================

import '../entities/match_entity.dart';
import '../repositories/matches_repository.dart';

class GetMatchesByDate {
  final MatchesRepository repository;

  GetMatchesByDate(this.repository);

  Future<List<MatchEntity>> call(DateTime date) {
    return repository.getMatchesByDate(date);
  }
}

          
================================================
📄 ARCHIVO: lib\features\matches\presentation\screens\home_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/datasources/matches_remote_datasource.dart';
import '../../data/repositories/matches_repository_impl.dart';
import '../../domain/entities/match_entity.dart';
import '../../domain/usecases/get_matches_by_date.dart';
import '../widgets/match_card.dart';
import '../../../match_detail/presentation/screens/match_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _selectedDate = DateTime.now();
  late Future<List<MatchEntity>> _matchesFuture;

  final _useCase = GetMatchesByDate(
    MatchesRepositoryImpl(MatchesRemoteDatasourceImpl()),
  );

  final DateTime _firstDate = DateTime(2026, 6, 11);
  final DateTime _lastDate = DateTime(2026, 7, 19);

  @override
  void initState() {
    super.initState();
    _loadMatches();
  }

  void _loadMatches() {
    setState(() {
      _matchesFuture = _useCase(_selectedDate);
    });
  }
// HU-02 Filtrar por fecha 
  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate.isBefore(_firstDate) ||
              _selectedDate.isAfter(_lastDate)
          ? _firstDate
          : _selectedDate,
      firstDate: _firstDate,
      lastDate: _lastDate,
    );
    if (picked != null) {
      _selectedDate = picked;
      _loadMatches();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mundial 2026'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: _pickDate,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              DateFormat('EEEE, d MMMM yyyy', 'es').format(_selectedDate),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: FutureBuilder<List<MatchEntity>>(
              future: _matchesFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Error: ${snapshot.error}',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
                final matches = snapshot.data ?? [];
                if (matches.isEmpty) {
                  return const Center(
                    child: Text('No hay partidos del Mundial en esta fecha'),
                  );
                }
                return ListView.builder(
                  itemCount: matches.length,
                  itemBuilder: (context, index) {
                    final match = matches[index];
                    return MatchCard(
                      match: match,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                MatchDetailScreen(matchId: match.id),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\matches\presentation\widgets\match_card.dart
================================================

import 'package:flutter/material.dart';
import '../../domain/entities/match_entity.dart';

class MatchCard extends StatelessWidget {
  final MatchEntity match;
  final VoidCallback onTap;
//HU -03 VER DETALLE DEL PARTIDO 
  const MatchCard({super.key, required this.match, required this.onTap});

  String get _score {
    if (match.homeScore != null && match.awayScore != null) {
      return '${match.homeScore} - ${match.awayScore}';
    }
    return 'vs';
  }

  Color _statusColor(BuildContext context) {
    switch (match.status) {
      case 'IN_PLAY':
      case 'PAUSED':
        return const Color(0xFF00C853);
      case 'FINISHED':
        return Colors.white54;
      default:
        return const Color(0xFFFFD600);
    }
  }

  String _statusLabel() {
    switch (match.status) {
      case 'IN_PLAY':
        return '● EN VIVO';
      case 'PAUSED':
        return '● DESCANSO';
      case 'FINISHED':
        return 'FINALIZADO';
      case 'TIMED':
      case 'SCHEDULED':
        return 'PROGRAMADO';
      default:
        return match.status;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
          child: Column(
            children: [
              // Fase + estado
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    match.stage.replaceAll('_', ' '),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    _statusLabel(),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: _statusColor(context),
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Equipos y marcador
              Row(
                children: [
                  Expanded(
                    child: Text(
                      match.homeTeam,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFF00C853), width: 1),
                    ),
                    child: Text(
                      _score,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      match.awayTeam,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              if (match.group != null) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E3A5F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Grupo ${match.group!.replaceAll('GROUP_', '')}',
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFFB0BEC5),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\data\datasources\match_detail_remote_datasource.dart
================================================

import '../../../../core/network/dio_client.dart';
import '../models/match_detail_model.dart';

abstract class MatchDetailRemoteDatasource {
  Future<MatchDetailModel> getMatchDetail(int matchId);
}

class MatchDetailRemoteDatasourceImpl implements MatchDetailRemoteDatasource {
  @override
  Future<MatchDetailModel> getMatchDetail(int matchId) async {
    final dio = DioClient.instance;
    final response = await dio.get('/matches/$matchId');
    return MatchDetailModel.fromJson(response.data as Map<String, dynamic>);
  }
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\data\models\match_detail_model.dart
================================================

import '../../domain/entities/match_detail_entity.dart';

class MatchDetailModel extends MatchDetailEntity {
  const MatchDetailModel({
    required super.id,
    required super.homeTeam,
    required super.awayTeam,
    super.homeScore,
    super.awayScore,
    required super.status,
    super.venue,
    super.group,
    required super.stage,
    required super.utcDate,
    super.referee,
  });

  factory MatchDetailModel.fromJson(Map<String, dynamic> json) {
    final score = json['score'] as Map<String, dynamic>?;
    final fullTime = score?['fullTime'] as Map<String, dynamic>?;
    final halfTime = score?['halfTime'] as Map<String, dynamic>?;
    final homeScore = fullTime?['home'] as int? ?? halfTime?['home'] as int?;
    final awayScore = fullTime?['away'] as int? ?? halfTime?['away'] as int?;

    final refereesList = json['referees'] as List<dynamic>?;
    final referee = refereesList != null && refereesList.isNotEmpty
        ? (refereesList.first as Map<String, dynamic>)['name'] as String?
        : null;

    return MatchDetailModel(
      id: json['id'] as int,
      homeTeam: (json['homeTeam'] as Map<String, dynamic>)['name'] as String,
      awayTeam: (json['awayTeam'] as Map<String, dynamic>)['name'] as String,
      homeScore: homeScore,
      awayScore: awayScore,
      status: json['status'] as String,
      venue: json['venue'] as String?,
      group: json['group'] as String?,
      stage: json['stage'] as String,
      utcDate: DateTime.parse(json['utcDate'] as String),
      referee: referee,
    );
  }
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\data\repositories\match_detail_repository_impl.dart
================================================

import '../../domain/entities/match_detail_entity.dart';
import '../../domain/respositories/match_detail_repository.dart';
import '../datasources/match_detail_remote_datasource.dart';

class MatchDetailRepositoryImpl implements MatchDetailRepository {
  final MatchDetailRemoteDatasource remoteDatasource;

  MatchDetailRepositoryImpl(this.remoteDatasource);

  @override
  Future<MatchDetailEntity> getMatchDetail(int matchId) async {
    return await remoteDatasource.getMatchDetail(matchId);
  }
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\domain\entities\match_detail_entity.dart
================================================

class MatchDetailEntity {
  final int id;
  final String homeTeam;
  final String awayTeam;
  final int? homeScore;
  final int? awayScore;
  final String status;
  final String? venue;
  final String? group;
  final String stage;
  final DateTime utcDate;
  final String? referee;

  const MatchDetailEntity({
    required this.id,
    required this.homeTeam,
    required this.awayTeam,
    this.homeScore,
    this.awayScore,
    required this.status,
    this.venue,
    this.group,
    required this.stage,
    required this.utcDate,
    this.referee,
  });
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\domain\respositories\match_detail_repository.dart
================================================

import '../entities/match_detail_entity.dart';

abstract class MatchDetailRepository {
  Future<MatchDetailEntity> getMatchDetail(int matchId);
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\domain\usecases\get_match_detail.dart
================================================

import '../entities/match_detail_entity.dart';
import '../respositories/match_detail_repository.dart';

class GetMatchDetail {
  final MatchDetailRepository repository;

  GetMatchDetail(this.repository);

  Future<MatchDetailEntity> call(int matchId) {
    return repository.getMatchDetail(matchId);
  }
}

          
================================================
📄 ARCHIVO: lib\features\match_detail\presentation\screens\match_detail_screen.dart
================================================

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/datasources/match_detail_remote_datasource.dart';
import '../../data/repositories/match_detail_repository_impl.dart';
import '../../domain/entities/match_detail_entity.dart';
import '../../domain/usecases/get_match_detail.dart';

class MatchDetailScreen extends StatefulWidget {
  final int matchId;
  const MatchDetailScreen({super.key, required this.matchId});

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  late Future<MatchDetailEntity> _detailFuture;

  final _useCase = GetMatchDetail(
    MatchDetailRepositoryImpl(MatchDetailRemoteDatasourceImpl()),
  );

  @override
  void initState() {
    super.initState();
    _detailFuture = _useCase(widget.matchId);
  }

  String _statusLabel(String status) {
    switch (status) {
      case 'IN_PLAY':   return '● EN VIVO';
      case 'PAUSED':    return '● DESCANSO';
      case 'FINISHED':  return 'FINALIZADO';
      case 'TIMED':
      case 'SCHEDULED': return 'PROGRAMADO';
      default:          return status;
    }
  }

  Color _statusColor(String status) {
    switch (status) {
      case 'IN_PLAY':
      case 'PAUSED':   return const Color(0xFF00C853);
      case 'FINISHED': return Colors.white54;
      default:         return const Color(0xFFFFD600);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del Partido')),
      body: FutureBuilder<MatchDetailEntity>(
        future: _detailFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final match = snapshot.data!;
          final localDate = match.utcDate.toLocal();
          final formattedDate =
              DateFormat("EEEE d MMM yyyy '–' HH:mm", 'es').format(localDate);
          final score = match.homeScore != null && match.awayScore != null
              ? '${match.homeScore}  -  ${match.awayScore}'
              : 'vs';

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Encabezado fase + grupo
                Text(
                  match.stage.replaceAll('_', ' '),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                if (match.group != null) ...[
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E3A5F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Grupo ${match.group!.replaceAll('GROUP_', '')}',
                      style: const TextStyle(fontSize: 12, color: Color(0xFFB0BEC5)),
                    ),
                  ),
                ],
                const SizedBox(height: 28),

                // Equipos y marcador
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(
                        match.homeTeam,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFF00C853), width: 1.5),
                      ),
                      child: Text(
                        score,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        match.awayTeam,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Badge de estado
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                  decoration: BoxDecoration(
                    color: _statusColor(match.status).withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: _statusColor(match.status), width: 1),
                  ),
                  child: Text(
                    _statusLabel(match.status),
                    style: TextStyle(
                      color: _statusColor(match.status),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                // Info cards
                _InfoCard(children: [
                  _InfoRow(icon: Icons.access_time, label: 'Fecha y hora', value: formattedDate),
                  if (match.venue != null)
                    _InfoRow(icon: Icons.stadium, label: 'Estadio', value: match.venue!),
                  if (match.referee != null)
                    _InfoRow(icon: Icons.sports, label: 'Árbitro', value: match.referee!),
                ]),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final List<Widget> children;
  const _InfoCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF132038),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF1E3A5F), width: 1),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _InfoRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: const Color(0xFF00C853)),
          const SizedBox(width: 10),
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

          
================================================
📄 ARCHIVO: lib\main.dart
================================================

import 'package:flutter/material.dart';
import 'features/matches/presentation/screens/home_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mundial 2026',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00C853),        // verde césped
          onPrimary: Colors.black,
          secondary: Color(0xFFFFD600),      // amarillo tarjeta
          onSecondary: Colors.black,
          primaryContainer: Color(0xFF1B5E20), // verde oscuro
          onPrimaryContainer: Colors.white,
          surface: Color(0xFF0A1628),        // azul noche FIFA
          onSurface: Colors.white,
          error: Color(0xFFE53935),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A1628),
        cardTheme: CardThemeData(
  color: const Color(0xFF132038),
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    side: const BorderSide(color: Color(0xFF1E3A5F), width: 1),
  ),
),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF061022),
          foregroundColor: Color(0xFF00C853),
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFF00C853),
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          headlineSmall: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          labelSmall: TextStyle(color: Color(0xFF00C853), letterSpacing: 1.2),
          labelLarge: TextStyle(color: Color(0xFF00C853), letterSpacing: 1.2),
          bodySmall: TextStyle(color: Color(0xFFB0BEC5)),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

          
================================================
📄 ARCHIVO: pubspec.yaml
================================================

name: mundial_2026
description: "Aplicación de partidos del Mundial 2026"
publish_to: 'none'

version: 1.0.0+1

environment:
  sdk: ^3.11.4

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  dio: ^5.7.0
  intl: ^0.19.0

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^6.0.0
  flutter_launcher_icons: ^0.14.0

flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/icon/icon.png"

flutter:
  uses-material-design: true

  assets:
    - assets/icon/

          
================================================
📄 ARCHIVO: README.md
================================================

# mundial_2026

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


          
================================================
📄 ARCHIVO: test\widget_test.dart
================================================

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mundial_2026/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}


