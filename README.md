📘 Simple Note App – Flutter (Exercise Week 5)

Ứng dụng ghi chú đơn giản sử dụng Flutter, SQLite, và Provider để quản lý trạng thái.
Ứng dụng cho phép: tạo ghi chú, đọc danh sách, chỉnh sửa, và xóa (CRUD).

🚀 Features

✏ Create note

📖 Read list of notes

🔧 Update existing notes

🗑 Delete notes

💾 Lưu trữ dữ liệu bằng SQLite (sqflite)

🔄 Quản lý trạng thái bằng Provider

🎨 UI đơn giản, dễ dùng, tách thành nhiều widget

📂 Project Structure
lib/
│── main.dart
│
├── models/
│   └── note.dart
│
├── database/
│   └── db_helper.dart
│
├── providers/
│   └── note_provider.dart
│
├── screens/
│   ├── home_page.dart
│   └── note_editor_screen.dart
│
└── widgets/
    └── note_card.dart

🧱 Technologies Used

Flutter 3.x

Dart (null-safety)

Provider (state management)

SQLite (sqflite + path_provider)

Material Design

📦 Dependencies (pubspec.yaml)
sqflite: ^2.3.0
path_provider: ^2.1.0
provider: ^6.1.0
intl: ^0.18.0

📝 How It Works
1) Note Model

Chứa cấu trúc note và hàm:

toMap() → lưu vào DB

fromMap() → đọc từ DB

2) SQLite – Database Helper

Tạo DB

Tạo table notes

CRUD đầy đủ (insert, query, update, delete)

Áp dụng Singleton Pattern

3) Provider – NoteProvider

Tải danh sách note

Thêm note

Sửa note

Xóa note

notifyListeners() để cập nhật UI

4) Home Page

Hiển thị danh sách note

Nút thêm note

Điều hướng sang Editor

5) Note Editor Page

Chế độ tạo mới

Chế độ chỉnh sửa

Tự động lưu vào DB

▶️ Run the App
flutter pub get
flutter run


📌 Bài tập yêu cầu

Tạo Note Model

Tạo Database Helper

CRUD Methods

Provider

Main App với Provider

Home Screen

Editor Screen

➡ Tất cả đã được thực hiện đầy đủ trong project.