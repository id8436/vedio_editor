.class public final Lcom/adobe/customextractor/ClipExtractor;
.super Ljava/lang/Object;
.source "ClipExtractor.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final UHD_MIN_HEIGHT:I = 0x438


# instance fields
.field private canUseNative:Z

.field private context:Landroid/content/Context;

.field private filePath:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;

.field private mediaExtractor:Landroid/media/MediaExtractor;

.field private metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

.field private movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "ClipExtractor"

    sput-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/adobe/customextractor/ClipExtractor;->context:Landroid/content/Context;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    .line 48
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    .line 49
    new-instance v0, Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-direct {v0, p1}, Lcom/adobe/customextractor/extractor/MediaExtractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    .line 50
    new-instance v0, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;-><init>(Lcom/adobe/customextractor/ClipExtractor;Lcom/adobe/customextractor/ClipExtractor$1;)V

    iput-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    .line 51
    return-void
.end method

.method private clipIsMov(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 179
    invoke-static {p1}, Lcom/adobe/customextractor/Util/Utilities;->getMimeTypefromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    const-string/jumbo v1, "video/quicktime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private extractBitmapUsingCustom(IIJZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 200
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "Using custom to fetch frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->getInstance()Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;

    move-result-object v1

    .line 202
    monitor-enter v1

    move-wide v2, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    .line 203
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->prepare(JLcom/adobe/customextractor/ClipExtractor;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    invoke-virtual {v1}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->getFrame()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    .line 205
    const-string/jumbo v0, "ThumbTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "before extract w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v3, v3, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v3, v3, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz p5, :cond_0

    .line 207
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v2, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v2, v2, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    const/4 v3, 0x2

    invoke-static {v2, p1, p2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    .line 210
    :cond_0
    const-string/jumbo v0, "ThumbTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thumb w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v3, v3, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " h "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v3, v3, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v1}, Lcom/adobe/customextractor/FrameResources/CustomFrameRetriever;->release()V

    .line 212
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget-object v0, v0, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->frame:Landroid/graphics/Bitmap;

    monitor-exit v1

    .line 214
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private extractBitmapUsingNative(IIJZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 187
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "Using native to fetch frame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 190
    invoke-virtual {v1, p3, p4, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    if-eqz p5, :cond_0

    .line 192
    invoke-static {v0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 196
    return-object v0
.end method

.method private getAdditionalMetadata()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Canuse native "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 150
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    if-eqz v1, :cond_1

    .line 154
    sget-object v4, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AdditionalMetadata:TempRotation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v4, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->rotation:I

    .line 161
    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->width:I

    .line 167
    :goto_1
    if-eqz v3, :cond_3

    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->height:I

    .line 174
    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 176
    :cond_0
    return-void

    .line 158
    :cond_1
    sget-object v1, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "AdditionalMetadata:could not find rotation using metadataRetriever"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iput v7, v1, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->rotation:I

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iput v7, v1, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->width:I

    goto :goto_1

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iput v7, v1, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->height:I

    goto :goto_2
.end method

.method private handleRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 239
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 240
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 241
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setDataSourceInternal(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/ClipExtractor;->clipIsMov(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    .line 71
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/customextractor/ClipExtractor;->tryNativeExtractor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can use native"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-boolean v1, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    move v0, v2

    .line 83
    :goto_1
    sget-object v3, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Done with  error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Could not set data source for extractor"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/adobe/customextractor/ClipExtractor;->tryCustomExtractor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Can use custom"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-boolean v2, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    move v0, v2

    goto :goto_1

    .line 80
    :cond_2
    sget-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not prepare"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 81
    goto :goto_1

    .line 87
    :cond_3
    if-eqz p1, :cond_4

    .line 88
    sget-object v3, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Fetch metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/adobe/customextractor/ClipExtractor;->getAdditionalMetadata()V

    .line 91
    :cond_4
    if-nez v0, :cond_5

    :goto_2
    return v1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private tryCustomExtractor()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/adobe/customextractor/extractor/MediaExtractor;->setDataSource(Landroid/net/Uri;)Z

    .line 120
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getTrackCount()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 128
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    sget-object v3, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "cannot use custom"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    if-nez v0, :cond_1

    :goto_1
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-object v3, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "could not use custom extractor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 126
    goto :goto_0

    :cond_1
    move v1, v2

    .line 131
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private tryNativeExtractor()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying native use on uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 113
    :goto_1
    if-nez v0, :cond_1

    :goto_2
    return v1

    .line 102
    :cond_0
    sget-object v0, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Trying native use on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/customextractor/ClipExtractor;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/adobe/customextractor/ClipExtractor;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    sget-object v3, Lcom/adobe/customextractor/ClipExtractor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not use native extractor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 111
    goto :goto_1

    :cond_1
    move v1, v2

    .line 113
    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public advance()V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->advance()V

    goto :goto_0
.end method

.method public getFrameAtTime(JIIZ)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v3, 0x438

    .line 219
    const-string/jumbo v0, "ThumbLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetFrameAtTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget v0, v0, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->height:I

    if-gt v0, v3, :cond_0

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move v6, p5

    .line 222
    invoke-direct/range {v1 .. v6}, Lcom/adobe/customextractor/ClipExtractor;->extractBitmapUsingNative(IIJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget v0, v0, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->height:I

    if-le v0, v3, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/adobe/customextractor/ClipExtractor;->tryCustomExtractor()Z

    move-result v0

    .line 228
    if-nez v0, :cond_1

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move v6, p5

    .line 229
    invoke-direct/range {v1 .. v6}, Lcom/adobe/customextractor/ClipExtractor;->extractBitmapUsingNative(IIJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move v6, p5

    .line 232
    invoke-direct/range {v1 .. v6}, Lcom/adobe/customextractor/ClipExtractor;->extractBitmapUsingCustom(IIJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getNativeTrackFormat(I)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getNativeTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    move-result v0

    .line 336
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSampleFlags()I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleFlags()I

    move-result v0

    goto :goto_0
.end method

.method public getSampleTime()J
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 318
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    .line 259
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getTrackCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/customextractor/Util/Media/MediaFormat;->createFromFrameworkMediaFormatV16(Landroid/media/MediaFormat;)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    .line 275
    iget-object v1, v0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/adobe/customextractor/ClipExtractor;->metadataAdditional:Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;

    iget v1, v1, Lcom/adobe/customextractor/ClipExtractor$MetadataAdditional;->rotation:I

    iput v1, v0, Lcom/adobe/customextractor/Util/Media/MediaFormat;->rotation:I

    .line 281
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->getTrackFormat(I)Lcom/adobe/customextractor/Util/Media/MediaFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public readSampleData(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/extractor/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0}, Lcom/adobe/customextractor/extractor/MediaExtractor;->release()V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->seekTo(JI)V

    goto :goto_0
.end method

.method public selectTrack(I)V
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->selectTrack(I)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/net/Uri;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    .line 63
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->filePath:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p2}, Lcom/adobe/customextractor/ClipExtractor;->setDataSourceInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDataSource(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/customextractor/ClipExtractor;->filePath:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->fileUri:Landroid/net/Uri;

    .line 58
    invoke-direct {p0, p2}, Lcom/adobe/customextractor/ClipExtractor;->setDataSourceInternal(Z)Z

    move-result v0

    return v0
.end method

.method public unselectTrack(I)V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/adobe/customextractor/ClipExtractor;->canUseNative:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->mediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/ClipExtractor;->movExtractor:Lcom/adobe/customextractor/extractor/MediaExtractor;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/extractor/MediaExtractor;->unselectTrack(I)V

    goto :goto_0
.end method
