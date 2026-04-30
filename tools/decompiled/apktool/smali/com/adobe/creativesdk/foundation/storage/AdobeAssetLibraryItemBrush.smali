.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.source "AdobeAssetLibraryItemBrush.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private brush:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private renditionHeight:F

.field private renditionWidth:F


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 58
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->brush:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 59
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 60
    int-to-float v0, p5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->renditionHeight:F

    .line 61
    int-to-float v0, p6

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->renditionWidth:F

    .line 63
    return-void
.end method


# virtual methods
.method public getBrush()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->brush:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getRenditionHeight()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->renditionHeight:F

    return v0
.end method

.method public getRenditionWidth()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->renditionWidth:F

    return v0
.end method

.method public nameOrIdForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->name:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;->itemID:Ljava/lang/String;

    goto :goto_0
.end method
