.class public Lcom/behance/sdk/files/LocalImageLoader;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"


# static fields
.field private static final ASC:Ljava/lang/String; = " ASC"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static albumsAndImageSourcesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cacheCleared:Z

.field private static volatile inProgress:Z

.field private static lockObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/behance/sdk/files/LocalImageLoader;->lockObject:Ljava/lang/Object;

    .line 44
    sput-boolean v1, Lcom/behance/sdk/files/LocalImageLoader;->cacheCleared:Z

    .line 45
    sput-boolean v1, Lcom/behance/sdk/files/LocalImageLoader;->inProgress:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCachedAlbumAndImagesData()V
    .locals 4

    .prologue
    .line 89
    sget-object v1, Lcom/behance/sdk/files/LocalImageLoader;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    .line 92
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->getImages()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 95
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->recycleBitmaps()V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 100
    :cond_1
    :try_start_1
    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    .line 103
    :cond_2
    sget-boolean v0, Lcom/behance/sdk/files/LocalImageLoader;->inProgress:Z

    if-eqz v0, :cond_3

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/behance/sdk/files/LocalImageLoader;->cacheCleared:Z

    .line 105
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method

.method public static getAlbumsList(Landroid/content/Context;ZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    :cond_0
    sget-object v1, Lcom/behance/sdk/files/LocalImageLoader;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/behance/sdk/files/LocalImageLoader;->inProgress:Z

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/behance/sdk/files/LocalImageLoader;->cacheCleared:Z

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {p0}, Lcom/behance/sdk/files/LocalImageLoader;->getListOfAlbums(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/behance/sdk/files/LocalImageLoader;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    .line 55
    sget-boolean v2, Lcom/behance/sdk/files/LocalImageLoader;->cacheCleared:Z

    if-eqz v2, :cond_1

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/behance/sdk/files/LocalImageLoader;->cacheCleared:Z

    .line 57
    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :goto_0
    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 59
    :cond_1
    if-eqz p2, :cond_2

    .line 61
    :try_start_3
    new-instance v2, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    const-string/jumbo v3, ""

    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CAMERA:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    invoke-direct {v2, v3, v4}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;-><init>(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKAlbumType;)V

    .line 62
    sget-object v3, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    const-string/jumbo v3, ""

    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->CREATIVE_CLOUD:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    invoke-direct {v2, v3, v4}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;-><init>(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKAlbumType;)V

    .line 64
    sget-object v3, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/files/ImageAlbum;

    .line 68
    new-instance v3, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/files/ImageAlbum;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/behance/sdk/enums/BehanceSDKAlbumType;->DEVICE_ALBUM:Lcom/behance/sdk/enums/BehanceSDKAlbumType;

    invoke-direct {v3, v4, v5}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;-><init>(Ljava/lang/String;Lcom/behance/sdk/enums/BehanceSDKAlbumType;)V

    .line 69
    invoke-virtual {v0}, Lcom/behance/sdk/files/ImageAlbum;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;->setImages(Ljava/util/List;)V

    .line 70
    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 73
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/behance/sdk/files/LocalImageLoader;->inProgress:Z

    .line 74
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :cond_4
    sget-object v0, Lcom/behance/sdk/files/LocalImageLoader;->albumsAndImageSourcesList:Ljava/util/List;

    goto :goto_0
.end method

.method public static getFromAlbumWithImageSelectionSources(Landroid/content/Context;I)Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {p0, v0, v0}, Lcom/behance/sdk/files/LocalImageLoader;->getAlbumsList(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 82
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getListOfAlbums(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/files/ImageAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Lcom/behance/sdk/files/LocalImageLoader;->getListOfImages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 113
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->getAlbumName()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/files/ImageAlbum;

    .line 121
    :goto_1
    invoke-virtual {v1, v0}, Lcom/behance/sdk/files/ImageAlbum;->addImage(Lcom/behance/sdk/project/modules/ImageModule;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v1, Lcom/behance/sdk/files/ImageAlbum;

    invoke-direct {v1, v4}, Lcom/behance/sdk/files/ImageAlbum;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 123
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    return-object v0
.end method

.method private static getListOfImages(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v2, v0

    .line 132
    new-array v8, v3, [Landroid/database/Cursor;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    const-string/jumbo v5, "_data ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v8, v6

    .line 136
    array-length v1, v8

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, v8, v0

    .line 137
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    const-string/jumbo v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    const-string/jumbo v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    const-string/jumbo v5, "bucket_display_name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    new-instance v6, Lcom/behance/sdk/files/LocalImage;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v6, v10, v11, v4}, Lcom/behance/sdk/files/LocalImage;-><init>(JLjava/lang/String;)V

    .line 142
    invoke-virtual {v6, v5}, Lcom/behance/sdk/files/LocalImage;->setAlbumName(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6}, Lcom/behance/sdk/files/LocalImage;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    .line 145
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_2
    return-object v7
.end method
