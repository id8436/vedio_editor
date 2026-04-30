.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;
.super Ljava/lang/Object;
.source "ACAdobeColorHSV.java"


# instance fields
.field private _H:D

.field private _S:D

.field private _V:D

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

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_color:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 42
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_H:D

    double-to-float v2, v2

    aput v2, v0, v1

    .line 43
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_S:D

    double-to-float v2, v2

    aput v2, v0, v1

    .line 44
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_V:D

    double-to-float v2, v2

    aput v2, v0, v1

    .line 45
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public getH()D
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_H:D

    return-wide v0
.end method

.method public getS()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_S:D

    return-wide v0
.end method

.method public getV()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_V:D

    return-wide v0
.end method

.method public setHSV(DDD)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_H:D

    .line 50
    iput-wide p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_S:D

    .line 51
    iput-wide p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/model/ACAdobeColorHSV;->_V:D

    .line 52
    return-void
.end method
