/// providers/note_provider.dart
import 'package:flutter/material.dart';
import '../database/db_helper.dart';
import '../models/note.dart';

class NoteProvider extends ChangeNotifier {
  List<Note> _notes = [];
  List<Note> get notes => _notes;

  /// Tải tất cả note từ DB và thông báo UI.
  Future<void> loadNotes() async {
    final maps = await DatabaseHelper.instance.readAllMaps();
    _notes = maps.map((m) => Note.fromMap(m)).toList();
    notifyListeners();
  }

  /// Tạo note mới, sau đó reload để giữ đơn giản.
  Future<void> addNote(Note note) async {
    await DatabaseHelper.instance.create(note.toMap());
    await loadNotes();
  }

  /// Cập nhật và reload.
  Future<void> updateNote(Note note) async {
    if (note.id == null) return;
    await DatabaseHelper.instance.update(note.id!, note.toMap());
    await loadNotes();
  }

  /// Xóa và reload.
  Future<void> deleteNote(int id) async {
    await DatabaseHelper.instance.delete(id);
    await loadNotes();
  }
}
