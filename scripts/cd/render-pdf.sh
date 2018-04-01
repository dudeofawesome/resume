#!/usr/bin/env bash

pwd;
ls build;
echo "[START HTTP SERVER]";
http-server -p 8080 build &
sleep 10;
# echo "[START HEADLESS CHROME]";
# google-chrome-stable --headless --disable-gpu --remote-debugging-port=9222 --no-sandbox "http://localhost:8080" &
# sleep 60;
echo "[CAPTURE WEBSITE PDF]";
chrome-headless-render-pdf --chrome-binary /usr/bin/google-chrome-stable --chrome-option '--no-sandbox' --url "http://localhost:8080" --pdf "build/Louis Orleans' Résumé.pdf" --no-margins;
if [ $? -gt 0 ]; then
  exit $?
fi
# echo "[STOP HEADLESS CHROME]";
# kill $!
echo "[STOP HTTP SERVER]";
kill http-server;
ls build;
echo "[DONE]";
