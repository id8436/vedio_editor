.class final Lcom/adobe/customextractor/extractor/Parser$Mp4Track;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

.field public final track:Lcom/adobe/customextractor/Tracks/Track;

.field public final trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/adobe/customextractor/Tracks/Track;Lcom/adobe/customextractor/Tracks/TrackSampleTable;Lcom/adobe/customextractor/Tracks/TrackOutput;)V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->track:Lcom/adobe/customextractor/Tracks/Track;

    .line 416
    iput-object p2, p0, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->sampleTable:Lcom/adobe/customextractor/Tracks/TrackSampleTable;

    .line 417
    iput-object p3, p0, Lcom/adobe/customextractor/extractor/Parser$Mp4Track;->trackOutput:Lcom/adobe/customextractor/Tracks/TrackOutput;

    .line 418
    return-void
.end method
