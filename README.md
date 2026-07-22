# NicLess

**Take control over Nicotine**

NicLess is a mobile app and hardware device that offers personalized support for smoking cessation by tracking habits, setting goals, and providing real-time data insights within a supportive community. By leveraging real-time data insights, interactive features, and community support, we empower users to break free from smoking addiction and improve their overall health and well-being.

**Team:** NicLess · Yıldız Technical University · Türkiye

**UN Sustainable Development Goals:** Goal 3 — Good Health & Wellbeing · Goal 11 — Sustainable Cities

---

## Recognition and Competitions

<table>
  <tr>
    <td align="center" width="50%" valign="top">
      <a href="https://www.youtube.com/watch?v=-aZp5qwKpII">
        <img src="https://img.youtube.com/vi/-aZp5qwKpII/maxresdefault.jpg" alt="Google Solution Challenge 2024 demo" width="420"/>
      </a>
      <br/><br/>
      <strong>Google Solution Challenge 2024</strong><br/>
      Top 10 Final Projects · <a href="https://www.youtube.com/watch?v=-aZp5qwKpII">Watch demo</a>
    </td>
    <td align="center" width="50%" valign="top">
      <a href="https://developers.googleblog.com/en/5-years-of-innovation-student-developers-solving-real-world-problems-using-google-tech/">
        <img src="https://storage.googleapis.com/gweb-developer-goog-blog-assets/images/GDSC-Social_1.2e16d0ba.fill-800x400.png" alt="Google Developers Blog feature" width="420"/>
      </a>
      <br/><br/>
      <strong>Google Developers Blog</strong><br/>
      5 Years of Innovation · <a href="https://developers.googleblog.com/en/5-years-of-innovation-student-developers-solving-real-world-problems-using-google-tech/">Read article</a>
    </td>
  </tr>
  <tr>
    <td align="center" width="50%" valign="top">
      <a href="https://www.instagram.com/p/C7j1qgGt2un/">
        <img src="assets/images/devfest-2024-mention.png" alt="NicLess mentioned at DevFest 2024" width="420"/>
      </a>
      <br/><br/>
      <strong>DevFest 2024</strong><br/>
      Featured mention · <a href="https://www.instagram.com/p/C7j1qgGt2un/">View on Instagram</a>
      <br/><br/>
      <sub>Upload screenshot to <code>assets/images/devfest-2024-mention.png</code> to show the preview above.</sub>
    </td>
    <td align="center" width="50%" valign="top">
      <a href="https://ai.google.dev/competition/projects/nicless">
        <img src="https://ai.google.dev/static/site-assets/images/share.png" alt="Google AI Gemini Competition" width="420"/>
      </a>
      <br/><br/>
      <strong>Google AI / Gemini Competition</strong><br/>
      <a href="https://ai.google.dev/competition/projects/nicless">Project page</a> · <a href="https://www.youtube.com/watch?v=Im-yVnvEgfs">Watch video</a>
      <br/><br/>
      <a href="https://www.youtube.com/watch?v=Im-yVnvEgfs">
        <img src="https://img.youtube.com/vi/Im-yVnvEgfs/hqdefault.jpg" alt="Gemini competition demo video" width="420"/>
      </a>
    </td>
  </tr>
</table>

### Google Solution Challenge 2024

Our project has been honored as one of the **top 10 teams** in the Google Solution Challenge 2024. This marks the **second time** a project from Türkiye has reached this stage — a significant achievement for our team and Yıldız Technical University.

> NicLess, Yıldız Technical University in Turkey — UN Sustainable Goals Addressed: Goal 3: Good Health & Wellbeing, Goal 11: Sustainable Cities. NicLess is a mobile app and hardware device that offers personalized support for smoking cessation by tracking habits, setting goals, and providing real-time data insights within a supportive community. The NicLess app is built on Firebase, Flutter, and Google Maps Platform.
>
> — [Google Developers Blog](https://developers.googleblog.com/en/5-years-of-innovation-student-developers-solving-real-world-problems-using-google-tech/)

### Google AI / Gemini Competition

NicLess participated in the Gemini competition with the [nicless-backend](https://github.com/remidosol/nicless-backend) API. The AI-powered features include:

- **Gemini chatbot** — personalized support, custom craving strategies, and real-time advice
- **Email updates** — motivational content and progress summaries
- **Weekly AI reports** — visualized journeys, successes, and areas for improvement
- **Maps zones** — red zones (smoking prohibited) and green zones (smoking allowed) to encourage nicotine-free areas

---

## Features

| Feature | Description |
| --- | --- |
| **Authentication** | Sign in, sign up, and sign out with JWT session handling |
| **Onboarding** | Multi-step setup including Bluetooth device pairing |
| **Smoking tracker** | Manual counter and automatic counter via Bluetooth hardware stream |
| **Gemini AI chat** | Streaming in-app chat powered by `google_generative_ai` |
| **Reports** | Weekly and periodic usage reports from the backend |
| **Profile & stats** | Weekly, monthly, and yearly usage statistics |
| **Google Maps** | Allowed and prohibited smoking zones on an interactive map |

Client-side Gemini chat runs in the Flutter app. Server-side Gemini (weekly/monthly reports, emails, push notifications) is handled by the [backend API](https://github.com/remidosol/nicless-backend).

---

## Related Repositories

### Backend API — [remidosol/nicless-backend](https://github.com/remidosol/nicless-backend)

**Author:** İbrahim ([@remidosol](https://github.com/remidosol))

The NestJS backend manages users, authentication, smoking profiles, daily records, analytics, AI-generated health reports, notifications, and audit history. It uses MongoDB, RS512 JWT sessions, SMTP email, Firebase Cloud Messaging, Google Cloud Storage, and Gemini.

The Flutter app connects to the production API at `http://api-nicless.eu-west-1.elasticbeanstalk.com` (see [`lib/product/constants/api_const.dart`](lib/product/constants/api_const.dart)).

For local development, Swagger, Docker setup, and environment configuration, see the [backend README](https://github.com/remidosol/nicless-backend#local-development).

```
Mobile app  →  REST /api  →  NestJS  →  MongoDB / Gemini / FCM / SMTP
```

---

## Tech Stack and Architecture

The app follows **Clean Architecture**, separating business logic from the UI for improved scalability and testability. State is managed with **BLoC** (Business Logic Component).

### Mobile (this repo)

| Area | Implementation |
| --- | --- |
| Framework | Flutter 3.4+ (CI uses 3.24.0) |
| Architecture | Clean Architecture + BLoC |
| Routing / DI | auto_route, get_it |
| Firebase | Core, Crashlytics, Analytics, Performance, Messaging |
| Network | NetKit + Dio |
| Local storage | Hive, flutter_secure_storage |
| AI | google_generative_ai |
| Maps | google_maps_flutter |
| Bluetooth | flutter_bluetooth_serial |
| Charts / UI | fl_chart, lottie, flutter_svg, shimmer |

### Key libraries

- [flutter_bloc](https://pub.dev/packages/flutter_bloc) — state management
- [NetKit](https://pub.dev/packages/net_kit) + [Dio](https://pub.dev/packages/dio) — networking
- [Firebase](https://firebase.google.com/) — Crashlytics, Analytics, Performance, Messaging
- [flutter_bluetooth_serial](https://pub.dev/packages/flutter_bluetooth_serial) — hardware connection
- [google_maps_flutter](https://pub.dev/packages/google_maps_flutter) — smoking zones map
- [google_generative_ai](https://pub.dev/packages/google_generative_ai) — Gemini chat

---

## Hardware

NicLess integrates with a custom hardware device over Bluetooth to track smoking sessions in real time.

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/37b57488-4151-44a7-b6f4-4342a370e79a" width="200">
<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/4d40d075-2f7c-4dc5-93db-dd1d2da8a287" width="200">

Firmware for the Arduino Uno + Bluetooth module is in [`arduino/uno_blue_nicless.ino`](arduino/uno_blue_nicless.ino):

- Sensor input on pin 8 — sends `0` / `1` over Bluetooth for inhale detection
- Output on pin 9 — responds to `o` / `f` commands from the app
- 9600 baud serial communication

---

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine
- Android Studio or IntelliJ IDEA with Flutter and Dart plugins
- A physical Android device or an emulator configured for development

### Setup

1. Clone the repository:

```bash
git clone https://github.com/behzodfaiziev/nicless-flutter
cd nicless-flutter
```

2. Install dependencies:

```bash
flutter pub get
```

3. Configure API keys (use your own keys — do not commit secrets):

**Google Maps** — add your key to `android/app/src/main/AndroidManifest.xml`:

```xml
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY_HERE"/>
```

**Gemini** — add your key to `lib/product/utils/constants/app/credentials_const.dart`:

```dart
class CredentialsConst {
  static const geminiApiKey = 'YOUR_API_KEY';
}
```

4. **Firebase** — platform configs are included (`firebase_options.dart`, `google-services.json`, `GoogleService-Info.plist`). The backend uses its own Firebase Admin setup for push notifications.

5. **Backend** (optional for full features) — by default the app uses the production API. To run against a local backend, update `ApiConst.baseUrl` in [`lib/product/constants/api_const.dart`](lib/product/constants/api_const.dart) and follow the [backend local development guide](https://github.com/remidosol/nicless-backend#local-development).

6. Run the app in debug mode (required for sign-in):

```bash
flutter run --debug
```

If you encounter any issues, open an [issue](https://github.com/behzodfaiziev/nicless-flutter/issues).

---

## Screenshots and Videos

### Demo videos

- [Google Solution Challenge 2024 demo](https://www.youtube.com/watch?v=-aZp5qwKpII)
- [Gemini competition demo](https://www.youtube.com/watch?v=Im-yVnvEgfs)

### App UI

#### Logo

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/bc96d40c-0cf0-4a18-9124-789a58d9c214" width="150" height="150">

#### Onboarding

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/db0f4121-3c83-4e80-9eb4-8b5e4e1467e1" height="447">

#### Home and Automatic Counter

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/1936cf97-2cc3-41d9-ab4a-b8442d6af57b" height="450">

#### Profile

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/90db10a9-eada-432b-9114-77290131fde3" height="450">

#### Gemini

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/62e0aea0-9850-4e53-9aa8-8e4d39025313" height="450">

#### Google Maps

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/47c5d98b-e993-4539-a070-925bda0870ee" height="450">

#### Rating

<img src="https://github.com/behzodfaiziev/nicless-flutter/assets/63793311/39689661-41d4-4df2-8a49-0c9cc678d7ad" height="450">

---

## Team and Credits

### Team (Google Solution Challenge 2024)

- Elif İrem KÜLCÜ
- Babak Ranjbaran
- Yasemin Atmaca
- Behzod Faiziev — Flutter app ([this repo](https://github.com/behzodfaiziev/nicless-flutter))

### Backend

- İbrahim ([@remidosol](https://github.com/remidosol)) — [nicless-backend](https://github.com/remidosol/nicless-backend) (Gemini competition iteration)

### Mentor and contributors

- **Mentor:** Veli Bacik — codebase guidance
- **Contributor:** NAYRA HASEHM — solution refinement suggestions

### Affiliations

- Yıldız Technical University (Yıldız Teknik Üniversitesi)
- GDG on Campus YTU
- Google Developer Groups Turkey
- Google for Developers

### Links

| Resource | URL |
| --- | --- |
| Flutter app | https://github.com/behzodfaiziev/nicless-flutter |
| Backend API | https://github.com/remidosol/nicless-backend |
| GSC demo video | https://www.youtube.com/watch?v=-aZp5qwKpII |
| Gemini competition | https://ai.google.dev/competition/projects/nicless |
| Google Developers Blog | https://developers.googleblog.com/en/5-years-of-innovation-student-developers-solving-real-world-problems-using-google-tech/ |
| DevFest 2024 (Instagram) | https://www.instagram.com/p/C7j1qgGt2un/ |
| Issues | https://github.com/behzodfaiziev/nicless-flutter/issues |
