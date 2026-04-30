.class public Lcom/behance/sdk/util/BehanceSDKGalleryUtils;
.super Ljava/lang/Object;
.source "BehanceSDKGalleryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFilesRecursively(Ljava/util/List;[Ljava/io/File;Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;[",
            "Ljava/io/File;",
            "Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 88
    :cond_0
    return-void

    .line 80
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {v2, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils;->addFilesRecursively(Ljava/util/List;[Ljava/io/File;Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;)V

    .line 80
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getGalleryFilePaths(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 28
    new-instance v2, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;-><init>(ZLcom/behance/sdk/util/BehanceSDKGalleryUtils$1;)V

    .line 30
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    if-eqz v4, :cond_2

    .line 35
    array-length v6, v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v4, v0

    .line 36
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 37
    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-nez v8, :cond_0

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v7, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils;->addFilesRecursively(Ljava/util/List;[Ljava/io/File;Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;)V

    .line 40
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 41
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isHidden()Z

    move-result v8

    if-nez v8, :cond_0

    .line 45
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    return-object v1
.end method

.method public static getGalleryImageFilePaths(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    new-instance v1, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;-><init>(ZLcom/behance/sdk/util/BehanceSDKGalleryUtils$1;)V

    .line 58
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    if-eqz v2, :cond_2

    .line 63
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    .line 64
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 66
    invoke-virtual {v5, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/behance/sdk/util/BehanceSDKGalleryUtils;->addFilesRecursively(Ljava/util/List;[Ljava/io/File;Lcom/behance/sdk/util/BehanceSDKGalleryUtils$GalleryFileFilter;)V

    .line 63
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_2
    return-object v3
.end method
