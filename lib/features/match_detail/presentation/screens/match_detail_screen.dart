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