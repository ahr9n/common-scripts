#!/bin/bash

# download a single video
youtube-dl -f 'best[height<=720]' https://youtu.be/jItLuOTsCX4

# download a complete playlist
youtube-dl --yes-playlist 'https://www.youtube.com/watch?v=ZsyvObHebV8&list=PLnpYU8_AiEPf3SauvyORAyFHCN79N9b8b' -f 'best[height<=720]'
