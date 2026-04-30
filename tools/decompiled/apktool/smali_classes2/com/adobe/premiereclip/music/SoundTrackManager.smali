.class public Lcom/adobe/premiereclip/music/SoundTrackManager;
.super Ljava/lang/Object;
.source "SoundTrackManager.java"


# static fields
.field private static supportedExtensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ase"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAlbumsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/music/SongCollection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v7

    const-string/jumbo v0, "album"

    aput-object v0, v2, v8

    const-string/jumbo v0, "numsongs"

    aput-object v0, v2, v9

    .line 132
    const-string/jumbo v5, "album ASC"

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 139
    const-string/jumbo v1, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got album name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string/jumbo v1, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got no of songs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lcom/adobe/premiereclip/music/SongCollection;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/premiereclip/music/SongCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/SongCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getSongsinMediaStoreforAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/music/SongCollection;->setSongCount(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_2
    return-object v6
.end method

.method public static getAllArtistsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/music/SongCollection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 98
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v9

    const-string/jumbo v0, "artist"

    aput-object v0, v2, v7

    const-string/jumbo v0, "number_of_tracks"

    aput-object v0, v2, v8

    .line 103
    const-string/jumbo v5, "artist ASC"

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    const-string/jumbo v1, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got artist name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string/jumbo v1, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got no of songs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Lcom/adobe/premiereclip/music/SongCollection;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/premiereclip/music/SongCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/SongCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getSongsinMediaStoreforArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/music/SongCollection;->setSongCount(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_2
    return-object v6
.end method

.method public static getAllPlaylistsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/music/SongCollection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v7

    const-string/jumbo v0, "name"

    aput-object v0, v2, v8

    .line 160
    const-string/jumbo v5, "name ASC"

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    const-string/jumbo v1, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got playlist name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v1, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got no of songs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Lcom/adobe/premiereclip/music/SongCollection;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-direct {v1, v2, v3, v4}, Lcom/adobe/premiereclip/music/SongCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/SongCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getSongsinMediaStoreforPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/music/SongCollection;->setSongCount(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    return-object v6
.end method

.method public static getAllSongsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(is_music!=0) AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    array-length v1, v1

    .line 77
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getQueryForSelectingExtensions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    sget-object v0, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->getRegexFromExtensions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string/jumbo v5, "title ASC"

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 88
    invoke-static {v0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromDeviceMusic(Landroid/database/Cursor;)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_2
    return-object v6
.end method

.method public static getClipSoundTracks(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    const v1, 0x7f090002

    const v2, 0x7f0a03a7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xae5d303

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const v1, 0x7f090003

    const v2, 0x7f0a03a8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xacfdb6e

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const v1, 0x7f09000b

    const v2, 0x7f0a03a9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xac80ff7

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const v1, 0x7f09000e

    const v2, 0x7f0a03aa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0x94cf3cf

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const v1, 0x7f090011

    const v2, 0x7f0a03ab

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xe4b4c0c

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const v1, 0x7f090015

    const v2, 0x7f0a03ac

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xca38b52

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const v1, 0x7f090021

    const v2, 0x7f0a03ad

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xaabb7ba

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const v1, 0x7f090028

    const v2, 0x7f0a03ae

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xaaff82a

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const v1, 0x7f090031

    const v2, 0x7f0a03af

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xa7251da

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const v1, 0x7f090033

    const v2, 0x7f0a03b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v4, 0xab4ee01

    invoke-static {v1, v2, v4, v5}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method private static getDurationFromDecoder(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Lcom/adobe/decoderfactory/AudioDecoderCache;->Instance()Lcom/adobe/decoderfactory/AudioDecoderCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/adobe/decoderfactory/AudioDecoderCache;->getDecoder(ILjava/lang/String;)Lcom/adobe/decoderfactory/IAudioDecoder;

    move-result-object v0

    .line 376
    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/adobe/decoderfactory/IAudioDecoder;->getSourceInfo()Lcom/adobe/decoderfactory/AudioInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/decoderfactory/AudioInfo;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSongsinMediaStoreforAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(album_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=0) AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    array-length v1, v1

    .line 258
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getQueryForSelectingExtensions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    sget-object v0, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->getRegexFromExtensions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 262
    const-string/jumbo v5, "title ASC"

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_2

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 268
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 269
    invoke-static {v0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromDeviceMusic(Landroid/database/Cursor;)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_2
    return-object v6
.end method

.method public static getSongsinMediaStoreforArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 281
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(artist_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=0) AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    array-length v1, v1

    .line 290
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getQueryForSelectingExtensions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    sget-object v0, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->getRegexFromExtensions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 294
    const-string/jumbo v5, "title ASC"

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_2

    .line 298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 301
    invoke-static {v0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->makeAudioClipFromDeviceMusic(Landroid/database/Cursor;)Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_2
    return-object v6
.end method

.method public static getSongsinMediaStoreforPlaylist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(playlist_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is_music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!=0) AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    array-length v1, v1

    .line 194
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getQueryForSelectingExtensions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    sget-object v0, Lcom/adobe/premiereclip/music/SoundTrackManager;->supportedExtensions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->getRegexFromExtensions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 198
    const-string/jumbo v5, "title ASC"

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 202
    if-eqz v11, :cond_3

    .line 203
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 206
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 208
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    :cond_1
    invoke-static {v3}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getDurationFromDecoder(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 219
    :goto_0
    const/4 v9, 0x0

    .line 220
    if-nez v0, :cond_5

    .line 221
    const/4 v9, 0x1

    .line 222
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    .line 225
    :goto_1
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got song id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got song name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got duration "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got path "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getUriForPlayListMusic(JJ)Landroid/net/Uri;

    move-result-object v2

    .line 232
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 233
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "audio"

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 236
    new-instance v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const-wide/16 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v12

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/project/sequence/AudioClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;Z)V

    .line 237
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_3
    return-object v10

    .line 217
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private static getUriForClipDefaultMusic(I)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://com.adobe.premiereclip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUriForPlayListMusic(JJ)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 315
    const-string/jumbo v0, "external"

    .line 316
    invoke-static {v0, p0, p1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 315
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static makeAudioClipFromClipDefaultMusic(ILjava/lang/String;J)Lcom/adobe/premiereclip/project/sequence/AudioClip;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 354
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getUriForClipDefaultMusic(I)Landroid/net/Uri;

    move-result-object v2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/music/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".m4a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 362
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_0
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 369
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "audio"

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p2, p3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 371
    new-instance v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    move-object v3, v0

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/project/sequence/AudioClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;Z)V

    :goto_1
    return-object v1

    .line 356
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static makeAudioClipFromDeviceMusic(Landroid/database/Cursor;)Lcom/adobe/premiereclip/project/sequence/AudioClip;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 321
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 323
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    :cond_0
    invoke-static {v3}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getDurationFromDecoder(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 335
    :goto_0
    if-nez v1, :cond_2

    .line 337
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    .line 340
    :goto_1
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got song id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got song name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string/jumbo v0, "SoundTrackMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 346
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFormattedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 347
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "audio"

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    .line 350
    new-instance v1, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v10

    move-object v3, v0

    move-wide v4, v12

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/project/sequence/AudioClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;Z)V

    return-object v1

    .line 332
    :cond_1
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    move v9, v0

    move-object v7, v1

    goto/16 :goto_1
.end method
