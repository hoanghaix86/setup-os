#!/bin/bash

set -e

curl -OL https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip

unzip JetBrainsMono-2.304.zip -d JetBrainsMono

mv JetBrainsMono ~/.local/share/fonts

fc-cache -fv

rm JetBrainsMono-2.304.zip