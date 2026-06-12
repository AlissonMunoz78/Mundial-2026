import 'package:flutter/material.dart';
import '../../domain/entities/match_entity.dart';

class MatchCard extends StatelessWidget {
  final MatchEntity match;
  final VoidCallback onTap;

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