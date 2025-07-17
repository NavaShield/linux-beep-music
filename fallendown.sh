#!/bin/bash

importRaw(){
	local rawPath="https://raw.githubusercontent.com/NavaShield/linux-beep-music/main/lib/$1.sh"
	source <(curl -sSL "$rawPath")
}

importRaw "libmusic"

# First part of the song with same rythm
song="F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 B4 A4 C#4 A4 B4 E4 D#4 E4 F#4 D#4 B4 F#4 B4 F#4 B4 F#4 B4 F#4 A#4 F#4 A#4 G4 F#4 D4 F#4 D4 E4 F#4 E4 D4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 B4 A4 C#4 A4 B4 E4 D#4 E4 F#4 D#4 B4 F#4 B4 F#4 B4 F#4 B4 F#4 A#4 F#4 A#4 G4 F#4 D4 F#4 D4 E4 F#4 E4 D4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 B4 A4 C#4 A4 B4 E4 D#4 E4 F#4 D#4 B4 F#4 B4 F#4 B4 F#4 B4 F#4 A#4 F#4 A#4 G4 F#4 D4 F#4 D4 E4 F#4 E4 D4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 B4 A4 C#4 A4 B4 E4 D#4 E4 F#4 D#4 B4 F#4 B4 F#4 B4 F#4 B4 F#4 A#4 F#4 A#4 G4 F#4 D4 F#4 D4 E4 F#4 C#4 E4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 F#4 C#4 B4 A4 C#4 A4 B4 E4 D#4 E4 F#4 D#4 B4 F#4 B4 F#4 B4 F#4 B4 F#4 A#4 F#4 A#4 G4"

intervals=( 0.06 0.08 0.15 0.30 0.14 0.14 0.14 0.06 0.06 0.09 )

play_song_with_interval "$song" "${intervals[@]}"
