FROM mobiledevops/flutter-sdk-image:latest

WORKDIR /app
RUN git config --global --add safe.directory /home/mobiledevops/.flutter-sdk
COPY pubspec.yaml .
RUN flutter pub get

COPY lib/ ./lib/
COPY test/ ./test/

RUN flutter test

RUN flutter analyze
RUN flutter build web

FROM nginx:alpine
COPY --from=0 /app/build/web /usr/share/nginx/html

EXPOSE 80
