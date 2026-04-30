.class public Lcom/dropbox/core/v2/files/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# instance fields
.field protected dimensions:Lcom/dropbox/core/v2/files/Dimensions;

.field protected location:Lcom/dropbox/core/v2/files/GpsCoordinates;

.field protected timeTaken:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    .line 102
    iput-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    .line 103
    iput-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->timeTaken:Ljava/util/Date;

    .line 104
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/MediaMetadata;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Lcom/dropbox/core/v2/files/MediaMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->timeTaken:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/MediaMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    return-object v0
.end method

.method public withDimensions(Lcom/dropbox/core/v2/files/Dimensions;)Lcom/dropbox/core/v2/files/MediaMetadata$Builder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    .line 115
    return-object p0
.end method

.method public withLocation(Lcom/dropbox/core/v2/files/GpsCoordinates;)Lcom/dropbox/core/v2/files/MediaMetadata$Builder;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    .line 127
    return-object p0
.end method

.method public withTimeTaken(Ljava/util/Date;)Lcom/dropbox/core/v2/files/MediaMetadata$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/MediaMetadata$Builder;->timeTaken:Ljava/util/Date;

    .line 139
    return-object p0
.end method
