.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

.field public size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    .line 27
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    invoke-direct {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    invoke-direct {v0, p3, p4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>(FF)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    .line 32
    return-void
.end method


# virtual methods
.method public getOrigin()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public setOrigin(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    .line 45
    return-void
.end method

.method public setSize(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    .line 49
    return-void
.end method
