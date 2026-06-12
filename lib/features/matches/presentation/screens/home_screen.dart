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