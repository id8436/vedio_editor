.class public Lcom/adobe/premiereclip/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# static fields
.field private static instance:Lcom/adobe/premiereclip/media/MediaManager;


# instance fields
.field private addedAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/media/MediaManager;->addedAssets:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/media/MediaManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/adobe/premiereclip/media/MediaManager;->instance:Lcom/adobe/premiereclip/media/MediaManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/adobe/premiereclip/media/MediaManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/media/MediaManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/media/MediaManager;->instance:Lcom/adobe/premiereclip/media/MediaManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/media/MediaManager;->instance:Lcom/adobe/premiereclip/media/MediaManager;

    return-object v0
.end method

.method private getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAssets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/MediaInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 50
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/media/MediaInfo;

    .line 51
    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/MediaInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/MediaInfo;->getAssetUrl()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v0}, Lcom/adobe/premiereclip/media/MediaInfo;->getAssetDate()Ljava/lang/String;

    move-result-object v5

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 56
    invoke-static {v3}, Lcom/adobe/premiereclip/util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v7, Lcom/adobe/premiereclip/media/ClipAsset;

    invoke-direct {v7}, Lcom/adobe/premiereclip/media/ClipAsset;-><init>()V

    .line 61
    const-string/jumbo v8, "video"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "video"

    :goto_2
    iput-object v0, v7, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    .line 63
    iput-object v3, v7, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    .line 64
    iput-object v4, v7, Lcom/adobe/premiereclip/media/ClipAsset;->originalPath:Ljava/lang/String;

    .line 65
    iput-object v5, v7, Lcom/adobe/premiereclip/media/ClipAsset;->originalAssetDate:Ljava/lang/String;

    .line 66
    iput-object v6, v7, Lcom/adobe/premiereclip/media/ClipAsset;->fileUri:Landroid/net/Uri;

    .line 67
    invoke-direct {p0}, Lcom/adobe/premiereclip/media/MediaManager;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    .line 69
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    :cond_1
    const-string/jumbo v0, "image"

    goto :goto_2

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/media/MediaManager;->addedAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    return-object v2
.end method
