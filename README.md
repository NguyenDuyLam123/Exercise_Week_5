📘 Simple Note App – Flutter (Exercise Week 5)

    Một ứng dụng ghi chú đơn giản sử dụng Flutter, cho phép tạo, xem, sửa và xóa ghi chú một cách dễ dàng. Dữ liệu được lưu trữ cục bộ bằng SQLite và quản lý trạng thái bằng Provider.


✨ Tính năng

    - ✏ Tạo ghi chú mới

    - 📖 Xem danh sách ghi chú

    - 🔧 Cập nhật ghi chú

    - 🗑 Xóa ghi chú

    - 💾 Lưu trữ dữ liệu bằng SQLite (sqflite)

    - 🔄 Quản lý trạng thái bằng Provider

    - 🎨 Giao diện đơn giản, dễ dùng


🧩 Công nghệ & Thư viện

    - Ngôn ngữ: Dart

    - Framework: Flutter

    - Cơ sở dữ liệu: SQLite (sqflite + path_provider)

    - Quản lý trạng thái: Provider

    - Hiển thị ngày giờ: intl


📦 Dependencies (pubspec.yaml)

    - sqflite: ^2.3.0

    - path_provider: ^2.1.0

    - provider: ^6.1.0

    - intl: ^0.18.0


📂 Cấu trúc Dự án

Dự án được tổ chức rõ ràng, giúp dễ bảo trì và mở rộng:

lib/

│── main.dart
├── models/
│   └── note.dart
├── database/
│   └── db_helper.dart
├── providers/
│   └── note_provider.dart
├── screens/
│   ├── home_page.dart
│   └── note_editor_screen.dart
└── widgets/
    └── note_card.dart


📝 Hoạt động của Ứng dụng

1. Note Model
    - Chứa cấu trúc dữ liệu của ghi chú
    - toMap() – chuyển thành dạng lưu trong DB
    - fromMap() – đọc dữ liệu từ DB

2. SQLite – Database Helper
    - Tạo và quản lý database
    - CRUD đầy đủ (insert – query – update – delete)
    - Áp dụng Singleton Pattern

3. Provider – NoteProvider
    - Lưu danh sách các note
    - Thêm / sửa / xóa note
    - Gọi notifyListeners() để cập nhật UI

4. Home Page
    - Hiển thị danh sách hết ghi chú
    - Nút tạo ghi chú mới
    - Điều hướng đến editor

5. Note Editor Page
    - Chế độ tạo mới hoặc chỉnh sửa
    - Tự động lưu ghi chú vào SQLite

▶️ Chạy Ứng dụng
    - flutter pub get
    - flutter run