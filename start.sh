#!/bin/bash

/app/new-fighting-game.x86_64 --headless --server --verbose &

nginx -g "daemon off;"