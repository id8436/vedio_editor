.class public Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;
.super Ljava/lang/Object;
.source "SnapToBeatController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
        ">;"
    }
.end annotation


# instance fields
.field public intensity:F

.field public time:J


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 67
    iput p3, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    .line 68
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;)I
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    iget-wide v2, p1, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    check-cast p1, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->compareTo(Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;)I

    move-result v0

    return v0
.end method
