#!/bin/bash

importRaw(){
	local rawPath="https://raw.githubusercontent.com/NavaShield/linux-beep-music/main/lib/$1.sh"
	source <(curl -sSL "$rawPath")
}

importRaw "libmusic"

# First part of the song with same rythm
song="D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 C4 C4 D5 A4 G#4 G4 F4 D4 F4 G4 B3 B3 D5 A4 G#4 G4 F4 D4 F4 G4 A#3 A#3 D5 A4 G#4 G4 F4 D4 F4 G4 D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 C4 C4 D5 A4 G#4 G4 F4 D4 F4 G4 B3 B3 D5 A4 G#4 G4 F4 D4 F4 G4 A#3 A#3 D5 A4 G#4 G4 F4 D4 F4 G4 D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 C4 C4 D5 A4 G#4 G4 F4 D4 F4 G4 B3 B3 D5 A4 G#4 G4 F4 D4 F4 G4 A#3 A#3 D5 A4 G#4 G4 F4 D4 F4 G4 D5 D5 D6 A5 G#5 G5 F5 D5 F5 G5 C5 C5 D6 A5 G#5 G5 F5 D5 F5 G5 B4 B4 D6 A5 G#5 G5 F5 D5 F5 G5 A#4 A#4 D6 A5 G#5 G5 F5 D5 F5 G5 D5 D5 D6 A5 G#5 G5 F5 D5 F5 G5 C5 C5 D6 A5 G#5 G5 F5 D5 F5 G5 B4 B4 D6 A5 G#5 G5 F5 D5 F5 G5 A#4 A#4 D6 A5 G#5 G5 F5 D5 F5 G5 D5 D5 D6 A5 G#5 G5 F5 D5 F5 G5 C5 C5 D6 A5 G#5 G5 F5 D5 F5 G5 B4 B4 D6 A5 G#5 G5 F5 D5 F5 G5 A#4 A#4 D6 A5 G#5 G5 F5 D5 F5 G5"

intervals=( 0.06 0.08 0.15 0.30 0.14 0.14 0.14 0.06 0.06 0.09 )

# The rythm change here
# song="F5 F5 F5 F5 F5 D5 D5 F5 F5 F5 G5 G#5 G5 F5 D5 F5 G5 F5 F5 F5 G5 G#5 A5 C6 A5 D6 D6 D6 A5 D6 C6 A5 A5 A5 A5 A5 G5 G5 A5 A5 A5 A5 G5 A5 D6 A5 G5 D6 A5 G5 F5 C6 G5 F5 E5 A#4 C5 D5 F5 C6 F5 D5 F5 G5 G#5 G5 F5 D5 G#5 G5 F5 D5 F5 G5 G#5 A5 C6 A5 G#5 G5 F5 D5 E5 F5 G5 A5 C6 C#6 G#5 G#5 G5 F5 G5 F4 G4 A4 F5 E5 D5 E5 F5 G5 E5 A5 A5 G#5 G5 F#5 F5 E5 D#5 D5 C#5 D#5 F5 D5 F5 G5 G#5 G5 F5 D5 G#5 G5 F5 D5 F5 G5 G#5 A5 C6 A5 G#5 G5 F5 D5 E5 F5 G5 A5 C6 C#6 G#5 G#5 G5 F5 G5 F4 G4 A4 F5 E5 D5 E5 F5 G5 E5 A5 A5 G#5 G5 F#5 F5 E5 D#5 D5 C#5 D#5 F5 D5 F5 G5 G#5 G5 F5 D5 G#5 G5 F5 D5 F5 G5 G#5 A5 C6 A5 G#5 G5 F5 D5 E5 F5 G5 A5 C6 C#6 G#5 G#5 G5 F5 G5 F4 G4 A4 F5 E5 D5 E5 F5 G5 E5 A5 A5 G#5 G5 F#5 F5 E5 D#5 D5 C#5 D#5 A#3 F4 E4 D4 F4 A#3 F4 E4 D4 F4 A#3 F4 E4 D4 F4 A#3 F4 E4 D4 D4 C#4 C4 B3 A#3 A3 G#3 G3 F#3 F3 E3 D3 D3 D3 D4 A3 G#3 G3 F3 D3 F3 G3 C3 C3 D4 A3 G#3 G3 F3 D3 F3 G3 B2 B2 D4 A3 G#3 G3 F3 D3 F3 G3 A#2 A#2 D4 A3 G#3 G3 F3 D3 F3 G3 D3 D3 D4 A3 G#3 G3 F3 D3 F3 G3 C3 C3 D4 A3 G#3 G3 F3 D3 F3 G3 D5 F5 E5 C5 E5 D5 G4 A4 C5 F5 E5 C5 E5 D5 G4 A4 C5 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 D4 D4 D4 D4 C#4 C#4 C#4 C#4 C#4 C4 C4 C4 C4 B3 B3 B3 B3 B3 B3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 D4 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 D4 D4 D4 D4 C#4 C#4 C#4 C#4 C#4 C4 C4 C4 C4 B3 B3 B3 B3 B3 B3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 A#3 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 A#3 A#3 D5 A4 G#4 G4 F4 D4 F4 G4 C4 C4 D5 A4 G#4 G4 F4 D4 F4 G4 D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 D4 D4 D5 A4 G#4 G4 F4 D4 F4 G4 A#3 A#3 D5 A4 G#4 G4 F4 D4 F4 G4 C4 C4 D5 A4 G#4 G4 F4 D4 F4 G4"

play_song_with_interval "$song" "${intervals[@]}"
