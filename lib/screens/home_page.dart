/// screens/home_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../widgets/note_card.dart';
import 'note_editor_screen.dart';
import '../models/note.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<NoteProvider>();
    final notes = provider.notes;

    return Scaffold(
      appBar: AppBar(title: const Text('Simple Notes')),
      body: RefreshIndicator(
        onRefresh: provider.loadNotes,
        child: notes.isEmpty
            ? ListView(
                children: const [
                  SizedBox(height: 200),
                  Center(child: Text('No notes yet.')),
                ],
              )
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  return NoteCard(
                    note: note,
                    onTap: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => NoteEditorScreen(note: note),
                        ),
                      );
                    },
                    onDelete: () async {
                      if (note.id != null) {
                        await provider.deleteNote(note.id!);
                      }
                    },
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (_) => const NoteEditorScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
