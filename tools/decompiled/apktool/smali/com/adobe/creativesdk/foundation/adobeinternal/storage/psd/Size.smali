.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->width:F

    .line 27
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->height:F

    .line 28
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->width:F

    .line 32
    iput p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->height:F

    .line 33
    return-void
.end method
