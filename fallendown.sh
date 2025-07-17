#!/bin/bash

importRaw(){
	local rawPath="https://raw.githubusercontent.com/NavaShield/linux-beep-music/main/lib/$1.sh"
	source <(curl -sSL "$rawPath")
}

importRaw "libmusic"

# First part of the song with same rythm
song="F# C# F# C# F# C# F# C# F# C# F# C# B A C# A B E D# E F# D# B F# B F# B F# B F# A# F# A# G F# D F# D E F# E D C# F# C# F# C# F# C# F# C# F# C# F# C# B A C# A B E D# E F# D# B F# B F# B F# B F# A# F# A# G F# D F# D E F# E D C# F# C# F# C# F# C# F# C# F# C# F# C# B A C# A B E D# E F# D# B F# B F# B F# B F# A# F# A# G F# D F# D E F# E D C# F# C# F# C# F# C# F# C# F# C# F# C# B A C# A B E D# E F# D# B F# B F# B F# B F# A# F# A# G F# D F# D E F# C# E C# F# C# F# C# F# C# F# C# F# C# F# C# B A C# A B E D# E F# D# B F# B F# B F# B F# A# F# A# G"

intervals=( 0.06 0.08 0.15 0.30 0.14 0.14 0.14 0.06 0.06 0.09 )

play_song_with_interval "$song" "${intervals[@]}"
