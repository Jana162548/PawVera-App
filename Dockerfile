FROM mobiledevops/flutter-sdk-image:latest

WORKDIR /app

COPY pubspec.yaml .
RUN flutter pub get

COPY . .

RUN flutter test

RUN flutter build apk --release
