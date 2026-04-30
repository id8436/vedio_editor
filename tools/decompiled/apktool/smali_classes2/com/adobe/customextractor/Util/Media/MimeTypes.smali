.class public Lcom/adobe/customextractor/Util/Media/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final APPLICATION_EIA608:Ljava/lang/String; = "application/eia-608"

.field public static final APPLICATION_ID3:Ljava/lang/String; = "application/id3"

.field public static final APPLICATION_M3U8:Ljava/lang/String; = "application/x-mpegURL"

.field public static final APPLICATION_TTML:Ljava/lang/String; = "application/ttml+xml"

.field public static final AUDIO_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final AUDIO_AC3:Ljava/lang/String; = "audio/ac3"

.field public static final AUDIO_EC3:Ljava/lang/String; = "audio/eac3"

.field public static final AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field public static final AUDIO_MPEG_L1:Ljava/lang/String; = "audio/mpeg-L1"

.field public static final AUDIO_MPEG_L2:Ljava/lang/String; = "audio/mpeg-L2"

.field public static final AUDIO_OPUS:Ljava/lang/String; = "audio/opus"

.field public static final AUDIO_RAW:Ljava/lang/String; = "audio/raw"

.field public static final AUDIO_VORBIS:Ljava/lang/String; = "audio/vorbis"

.field public static final AUDIO_WEBM:Ljava/lang/String; = "audio/webm"

.field public static final BASE_TYPE_APPLICATION:Ljava/lang/String; = "application"

.field public static final BASE_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final BASE_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final BASE_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final VIDEO_H264:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final VIDEO_MP4V:Ljava/lang/String; = "video/mp4v-es"

.field public static final VIDEO_VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final VIDEO_VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final VIDEO_WEBM:Ljava/lang/String; = "video/webm"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "audio/ac3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x5

    .line 128
    :goto_0
    return v0

    .line 123
    :cond_0
    const-string/jumbo v0, "audio/eac3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x6

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p0}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 54
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid mime type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isApplication(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 97
    invoke-static {p0}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 67
    invoke-static {p0}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPassthroughAudio(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "audio/ac3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/eac3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isText(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTtml(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 77
    invoke-static {p0}, Lcom/adobe/customextractor/Util/Media/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
