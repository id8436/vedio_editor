.class public Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;
.super Ljava/lang/Object;
.source "WaveDisplayParam.java"


# instance fields
.field public final endX:F

.field public final endY:F

.field public final startX:F

.field public final startY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startX:F

    .line 31
    iput p2, p0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->startY:F

    .line 32
    iput p3, p0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endX:F

    .line 33
    iput p4, p0, Lcom/adobe/premiereclip/editor/waveform/WaveDisplayParam;->endY:F

    .line 34
    return-void
.end method
