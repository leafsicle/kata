def song_decoder(song):
    song = song.replace("WUB", " ").strip()
    while "  " in song:
        song = song.replace("  ", " ")
    return song
