import 'package:flutter/material.dart';
import '../data/report_data.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final sections = ReportData.sections;
    final completedCount = sections.where((s) => s.isCompleted).length;
    final progress = completedCount / sections.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('B-Tech Project Report'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Progress Header
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Report Progress',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\${(progress * 100).toInt()}% Completed',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$completedCount / \${sections.length}',
                      style: const TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  minHeight: 8,
                  borderRadius: BorderRadius.circular(4),
                ),
              ],
            ),
          ),
          
          // Sections List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: sections.length,
              itemBuilder: (context, index) {
                final section = sections[index];
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: CircleAvatar(
                      backgroundColor: section.isCompleted 
                          ? Colors.green.withOpacity(0.2) 
                          : Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      child: Icon(
                        section.isCompleted ? Icons.check : Icons.edit_document,
                        color: section.isCompleted ? Colors.green : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    title: Text(
                      section.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: section.isCompleted ? TextDecoration.lineThrough : null,
                        color: section.isCompleted ? Colors.grey : null,
                      ),
                    ),
                    subtitle: Text(
                      section.content.isEmpty ? 'Not started' : 'Draft in progress...',
                      style: TextStyle(
                        color: section.content.isEmpty ? Colors.grey : Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(section: section),
                        ),
                      );
                      // Refresh progress when returning
                      setState(() {});
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
