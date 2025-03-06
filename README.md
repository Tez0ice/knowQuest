# Flutter Project

This is a Flutter project with Firebase integration. Follow the steps below to set up and run the project locally.

## Prerequisites

Ensure you have the following installed on your machine:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- [Firebase CLI](https://firebase.google.com/docs/cli#install_the_firebase_cli)
- [Android Studio](https://developer.android.com/studio) (for Android development)
- Git

## Getting Started

### 1. Clone the Repository

```sh
git clone <your-repo-url>
cd <your-project-folder>
```

### 2. Install Dependencies

```sh
flutter pub get
```

### 3. Set Up Firebase

If you have access to the Firebase project, run the following command to configure Firebase automatically:

```sh
dart run flutterfire_cli configure
```

This will generate the necessary Firebase files (`lib/firebase_options.dart`, `google-services.json`, `GoogleService-Info.plist`).

If you don’t have access, you’ll need to:

- Create a new Firebase project.
- Register your app (Android, iOS, Web).
- Download and place `google-services.json` in `android/app/`.
- Run `flutterfire configure` to generate `firebase_options.dart`.

### 4. Run the Project

For Android:

```sh
flutter run
```

For Web:

```sh
flutter run -d chrome
```

### 5. Optional: Set Up an Emulator or Device

- **Android:** Use an emulator via Android Studio.
- **Web:** Chrome is recommended.

## Troubleshooting

- Run `flutter doctor` to check for any missing dependencies.
- Ensure your Firebase project is correctly linked.

## Contributing

Feel free to submit issues or pull requests to improve this project!
