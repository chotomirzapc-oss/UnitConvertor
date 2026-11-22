#!/usr/bin/env bash
# Local build: requires Flutter SDK (stable) + Android SDK + JDK 17
set -e
flutter create --org com.engiconvert --project-name engineeringcalculator --platforms android --no-overwrite .
sed -i 's/android:label="[^"]*"/android:label="EngiConvert"/' android/app/src/main/AndroidManifest.xml
sed -i 's/minSdk = flutter.minSdkVersion/minSdk = 26/; s/minSdkVersion flutter.minSdkVersion/minSdkVersion 26/' android/app/build.gradle*
rm -f test/widget_test.dart
flutter pub get
dart run flutter_launcher_icons
flutter test
flutter build apk --release
echo "APK: build/app/outputs/flutter-apk/app-release.apk"
