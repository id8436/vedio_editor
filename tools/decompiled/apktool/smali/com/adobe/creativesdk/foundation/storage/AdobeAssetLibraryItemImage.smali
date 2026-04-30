.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.source "AdobeAssetLibraryItemImage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private image:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private imageHeight:F

.field private imageWidth:F

.field private primaryComponentType:Ljava/lang/String;

.field private rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private renditionHeight:F

.field private renditionWidth:F


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p10}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 134
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->image:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 135
    int-to-float v0, p4

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->imageHeight:F

    .line 136
    int-to-float v0, p5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->imageWidth:F

    .line 137
    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 138
    int-to-float v0, p7

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->renditionHeight:F

    .line 139
    int-to-float v0, p8

    iput v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->renditionWidth:F

    .line 140
    iput-object p9, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->primaryComponentType:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public getImage()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->image:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getImageHeight()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->imageWidth:F

    return v0
.end method

.method public getPrimaryComponentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->primaryComponentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getRenditionHeight()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->renditionHeight:F

    return v0
.end method

.method public getRenditionWidth()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->renditionWidth:F

    return v0
.end method

.method protected setImage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->image:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 44
    return-void
.end method

.method protected setImageHeight(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->imageHeight:F

    .line 48
    return-void
.end method

.method protected setImageWidth(F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->imageWidth:F

    .line 52
    return-void
.end method

.method protected setPrimaryComponentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->primaryComponentType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method protected setRendition(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 56
    return-void
.end method

.method protected setRenditionHeight(F)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->renditionHeight:F

    .line 60
    return-void
.end method

.method protected setRenditionWidth(F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;->renditionWidth:F

    .line 64
    return-void
.end method
