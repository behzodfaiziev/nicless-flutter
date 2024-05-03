# Nicless App

### Introduction
Our project aims to revolutionize smoking cessation by offering a comprehensive mobile app integrated with hardware to help individuals track their smoking habits, set personalized goals, and receive support on their quit journey. By leveraging real-time data insights, interactive features, and community support, we strive to empower users to break free from smoking addiction and improve their overall health and well-being.

## Prerequisites
#### Before running the app, ensure you have the following prerequisites:

- Flutter SDK installed on your machine. You can find instructions for installation [here](https://docs.flutter.dev/get-started/install).
- Android Studio or IntelliJ IDEA with Flutter and Dart plugins installed.
- A physical Android device or an emulator configured for development.

## Getting Started

To run the app on your device, follow these steps:

1. Clone the repository to your local machine:
```git
git clone https://github.com/behzodfaiziev/nicless-flutter
```
2. Add your Google Maps API key to the AndroidManifest.xml file located at `android/app/src/main/AndroidManifest.xml`. Replace YOUR_API_KEY_HERE with your actual API key.
```xml
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY_HERE"/>
```
3. Add your Gemini API key to ```lib/product/utils/constants/app/credentials_const```
   - note:
```dart
    class CredentialsConst {
       static const geminiApiKey = 'YOUR_API_KEY';
    }
```

5. Ensure that the app is running in debug mode to sign in successfully.
```dart
flutter run --debug
 ```
4. Congratulations! You have successfully set up and run Nicless on your device. If you encounter any issues, don't hesitate to create an issue [here](https://github.com/behzodfaiziev/nicless-flutter/issues).


## Hardware
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/37b57488-4151-44a7-b6f4-4342a370e79a"  width="200">
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/4d40d075-2f7c-4dc5-93db-dd1d2da8a287"  width="200">

## Software
The app follows the Clean Architecture pattern, separating the business logic from the UI layer for improved scalability and testability. It also uses BLoC (Business Logic Component) for state management, providing a robust and predictable way to manage the app's state
#### Featured:
- Clean Architecture
- Unit test covered (aiming to follow TDD)
  - Use case test: :white_check_mark: ```100%```
  - Repository test: :white_check_mark: ```100%```
  - Bloc test: (under development) ```0%```
  - Data source test: (under development) ```0%```
- Firebase: Authentication, Firestore, Analytics
- [BLoC](https://pub.dev/packages/bloc)
- [Bluetooth](https://pub.dev/packages/flutter_bluetooth_serial) 
- Network manager inspired by [Vexana](https://pub.dev/packages/vexana)
- [Google Maps](https://pub.dev/packages/google_maps_flutter)
- [Gemini](https://pub.dev/packages/google_generative_ai)

## GDSC Solution Challenge 2024

<video src='https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/2f28d629-4628-4e95-866d-03dfda60495d' width=360/></video>

# User interface

#### Logo
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/bc96d40c-0cf0-4a18-9124-789a58d9c214" width="150" height="150">

### Onboarding
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/db0f4121-3c83-4e80-9eb4-8b5e4e1467e1" height="447">

### Home & Automatic Counter
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/1936cf97-2cc3-41d9-ab4a-b8442d6af57b" height="450">

### Profile
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/a6699290-2bf2-416e-8918-f2e6270fad2e" height="450">


### Gemini
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/62e0aea0-9850-4e53-9aa8-8e4d39025313" height="450">

### Google Maps
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/47c5d98b-e993-4539-a070-925bda0870ee" height="450">

#### Rating
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/39689661-41d4-4df2-8a49-0c9cc678d7ad" height="450">




