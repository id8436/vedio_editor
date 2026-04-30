.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->x:F

    .line 33
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->y:F

    .line 34
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->x:F

    .line 28
    iput p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;->y:F

    .line 29
    return-void
.end method
