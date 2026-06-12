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