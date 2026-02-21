# Expense Tracker

A modern and elegant Flutter application for tracking expenses efficiently. Provide users with a clean interface to manage your daily expenditures, categorize them, and keep your budget in check.

## Features

- **Local Storage:** Lightning-fast local data storage using `Hive` NoSQL database.
- **State Management:** Seamless state handling and reactivity using `Provider`.
- **Theming:** Full support for Light and Dark modes matching your device settings.
- **Unique Identification:** Every expense is uniquely tracked with `uuid`.
- **Formatting:** Easy to read date and currency formats using `intl`.
- **Cross-Platform:** Built with Flutter, supporting Android and iOS beautifully.

## Tech Stack 

- **Framework:** Flutter (SDK: ^3.11.0)
- **Language:** Dart
- **Key Packages:**
  - `provider` (^6.1.5+1) for State Management
  - `hive` & `hive_flutter` for Local Database
  - `intl` for Date/Currency formatting
  - `uuid` for generating unique IDs

## Getting Started 

If you want to run this project locally, follow these steps:

### Prerequisites

- Flutter SDK (version ^3.11.0 or higher)
- Dart SDK
- An emulator or physical device for testing (Android/iOS)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Pavankalyan32/expense_tracker.git
   ```

2. **Navigate to the project directory:**
   ```bash
   cd expense_tracker
   ```

3. **Get dependencies:**
   ```bash
   flutter pub get
   ```

4. **Generate necessary Hive adapters (if applicable):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Run the app:**
   ```bash
   flutter run
   ```

## Project details

This project acts as a robust template or starting point for any offline-first expense management tool built in Flutter!
