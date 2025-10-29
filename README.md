# Rick and Morty Characters App

Приложение на Flutter для просмотра персонажей мультсериала "Рик и Морти".  
Позволяет просматривать список персонажей, добавлять их в избранное и работать оффлайн с кешированными данными.

---

## Функциональные возможности

### Главный экран (Список персонажей)

- Отображение персонажей в виде карточек.
- Карточка содержит:
  - Изображение персонажа.
  - Имя персонажа.
  - Дополнительные характеристики (статус, вид, локация).
  - Кнопку "звездочка" для добавления/удаления из избранного.
- Пагинация: подгрузка новых персонажей при скролле вниз.

### Экран "Избранное"

- Отображение списка избранных персонажей.
- Возможность сортировки по имени или статусу.
- Удаление персонажа из избранного.

### Навигация

- BottomNavigationBar для переключения между главным экраном и экраном избранного.

### Дополнительно

- Кеширование данных для оффлайн-доступа.
- Быстрая работа с локальной базой данных (Hive).

---

## Установка и запуск

1. **Клонируем репозиторий**

```bash
git clone https://github.com/BATU994/rick-and-morty-app.git
cd rick-and-morty-app
```

Устанавливаем зависимости
flutter pub get

После этого

Запуск приложения
flutter run

После этого

Сборка релизной версии

flutter build apk # Android
flutter build ios
<<<<<<< HEAD

```text
lib/
└─ src/
   ├─ core/
   │  ├─ di/          # Dependency Injection
   │  ├─ network/     # API client (Dio)
   │  └─ utils/       # Constants and utilities
   │
   ├─ features/
   │  └─ character/
   │     ├─ data/
   │     │  ├─ models/
   │     │  └─ repositories/
   │     │
   │     ├─ domain/
   │     │  ├─ repositories/
   │     │  └─ usecases/
   │     │
   │     └─ presentation/
   │        ├─ bloc/
   │        ├─ pages/
   │        └─ widgets/
   │
   └─ main.dart



## Project Setup

This project was built with:

- **Flutter version:** 3.13.0
- **Dart SDK version:** >=3.9.0 <4.0.0

### Dependencies

| Package                  | Version   |
|---------------------------|-----------|
| flutter                   | sdk       |
| cupertino_icons           | ^1.0.8    |
| dio                       | ^5.9.0    |
| flutter_bloc              | ^9.1.1    |
| bloc                      | ^9.0.1    |
| get_it                     | ^8.2.0    |
| hive                      | ^2.2.3    |
| hive_flutter              | ^1.1.0    |
| freezed_annotation        | ^2.4.4    |
| json_annotation           | ^4.9.0    |
| injectable                | ^2.5.2    |
| nitrite_hive_adapter      | ^1.1.0    |

### Dev Dependencies

| Package                  | Version   |
|---------------------------|-----------|
| analyzer                  | ^5.13.0   |
| hive_generator            | ^2.0.1    |
| freezed                   | ^2.4.0    |
| json_serializable          | ^6.8.0    |
| build_runner              | ^2.4.9    |

=======
>>>>>>> 4a78c89 (second commit upgrade)
