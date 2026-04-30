.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;
.super Ljava/lang/Object;
.source "ACAdobeColorRGB.java"


# instance fields
.field private _B:D

.field private _G:D

.field private _R:D

.field private _color:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColor;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_color:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public getB()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_B:D

    return-wide v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_R:D

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_G:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_B:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getG()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_G:D

    return-wide v0
.end method

.method public getR()D
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_R:D

    return-wide v0
.end method

.method public setRGB(DDD)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_R:D

    .line 46
    iput-wide p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_G:D

    .line 47
    iput-wide p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorRGB;->_B:D

    .line 48
    return-void
.end method
