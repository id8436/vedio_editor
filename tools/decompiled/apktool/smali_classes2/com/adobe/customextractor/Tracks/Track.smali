.class public final Lcom/adobe/customextractor/Tracks/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field public static final TYPE_AUDIO:I = 0x736f756e

.field public static final TYPE_HINT:I = 0x68696e74

.field public static final TYPE_META:I = 0x6d657461

.field public static final TYPE_TEXT:I = 0x74657874

.field public static final TYPE_TIME_CODE:I = 0x746d6364

.field public static final TYPE_VIDEO:I = 0x76696465


# instance fields
.field public final durationUs:J

.field public final id:I

.field public final mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

.field public final nalUnitLengthFieldLength:I

.field public final sampleDescriptionEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJLcom/adobe/customextractor/Util/Media/MediaFormat;[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;I)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/adobe/customextractor/Tracks/Track;->id:I

    .line 72
    iput p2, p0, Lcom/adobe/customextractor/Tracks/Track;->type:I

    .line 73
    iput-wide p3, p0, Lcom/adobe/customextractor/Tracks/Track;->timescale:J

    .line 74
    iput-wide p5, p0, Lcom/adobe/customextractor/Tracks/Track;->durationUs:J

    .line 75
    iput-object p7, p0, Lcom/adobe/customextractor/Tracks/Track;->mediaFormat:Lcom/adobe/customextractor/Util/Media/MediaFormat;

    .line 76
    iput-object p8, p0, Lcom/adobe/customextractor/Tracks/Track;->sampleDescriptionEncryptionBoxes:[Lcom/adobe/customextractor/Tracks/TrackEncryptionBox;

    .line 77
    iput p9, p0, Lcom/adobe/customextractor/Tracks/Track;->nalUnitLengthFieldLength:I

    .line 78
    return-void
.end method
