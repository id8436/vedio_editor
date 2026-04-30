.class public final Lcom/adobe/customextractor/Tracks/TrackInfo;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# instance fields
.field public final durationUs:J

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/adobe/customextractor/Tracks/TrackInfo;->mimeType:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lcom/adobe/customextractor/Tracks/TrackInfo;->durationUs:J

    .line 13
    return-void
.end method
