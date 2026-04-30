.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;
.source "ClipLookUpSurface.java"


# instance fields
.field private currentLook:Lcom/adobe/premiereclip/looks/BaseLook;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x10

    .line 38
    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->mWidth:I

    .line 39
    const/16 v0, 0x100

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->mHeight:I

    .line 41
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/adobe/premiereclip/looks/LocalLooks;->getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->currentLook:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 43
    return-void
.end method


# virtual methods
.method public getCurrentLook()Lcom/adobe/premiereclip/looks/BaseLook;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->currentLook:Lcom/adobe/premiereclip/looks/BaseLook;

    return-object v0
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->currentLook:Lcom/adobe/premiereclip/looks/BaseLook;

    if-ne v1, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->currentLook:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 54
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->currentLook:Lcom/adobe/premiereclip/looks/BaseLook;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipLookUpSurface;->drawImage()V

    .line 58
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
