.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.source "AdobeAssetLibraryItemLook.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private renditionHeight:F

.field private renditionWidth:F


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 46
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 47
    int-to-float v0, p4

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->renditionHeight:F

    .line 48
    int-to-float v0, p5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->renditionWidth:F

    .line 50
    return-void
.end method


# virtual methods
.method public getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getRenditionHeight()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->renditionHeight:F

    return v0
.end method

.method public getRenditionWidth()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;->renditionWidth:F

    return v0
.end method
