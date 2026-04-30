.class public Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;
.super Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;
.source "DeviceMediaSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;->getDataFromCursor(Landroid/database/Cursor;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getDataFromCursor(Landroid/database/Cursor;)Ljava/util/HashMap;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/mediabrowser/Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 92
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    const-string/jumbo v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 95
    const-string/jumbo v2, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 96
    const-string/jumbo v2, "media_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 97
    const-string/jumbo v2, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 98
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 99
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 100
    const-string/jumbo v2, "_size"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 101
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 102
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 103
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 107
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 110
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 111
    if-nez v2, :cond_3

    .line 112
    new-instance v11, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-direct {v11, v3, v12}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_1
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJ)V

    .line 116
    invoke-virtual {v11, v3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->addItem(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    .line 101
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_0

    .line 118
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setId(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_1
    const-string/jumbo v2, "DeviceMediaSource"

    const-string/jumbo v3, "No media files in phone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    return-object v19

    :cond_3
    move-object v11, v2

    goto :goto_1
.end method


# virtual methods
.method public fetchAlbum(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public fetchData(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/DeviceMediaSource;Landroid/content/Context;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method

.method public fetchThumbnail(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "J",
            "Landroid/widget/ImageView;",
            "IITT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    move-object v1, p1

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->load(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V

    .line 83
    return-void
.end method
