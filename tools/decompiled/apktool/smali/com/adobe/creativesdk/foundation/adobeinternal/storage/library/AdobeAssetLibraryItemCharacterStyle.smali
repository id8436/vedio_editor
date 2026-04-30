.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
.source "AdobeAssetLibraryItemCharacterStyle.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field private renditionHeight:F

.field private renditionWidth:F

.field private styleData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 79
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->styleData:Lorg/json/JSONObject;

    .line 80
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 81
    int-to-float v0, p5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->renditionHeight:F

    .line 82
    int-to-float v0, p6

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->renditionWidth:F

    .line 84
    return-void
.end method


# virtual methods
.method public getRendition()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method

.method public getRenditionHeight()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->renditionHeight:F

    return v0
.end method

.method public getRenditionWidth()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->renditionWidth:F

    return v0
.end method

.method public getStyleData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->styleData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public nameOrIdForDisplay()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->getStyleData()Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    const-wide/16 v0, 0x0

    .line 91
    const-string/jumbo v4, "fontFamily"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string/jumbo v5, "fontSize"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 97
    if-eqz v5, :cond_4

    .line 98
    const-string/jumbo v2, "value"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string/jumbo v2, "type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 109
    if-eqz v3, :cond_0

    .line 111
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 113
    :cond_0
    const-string/jumbo v5, "%s %.1f%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    aput-object v0, v6, v4

    const/4 v1, 0x2

    if-eqz v2, :cond_2

    move-object v0, v2

    :goto_2
    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_3
    return-object v0

    .line 113
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    .line 122
    :cond_3
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;->nameOrIdForDisplay()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v3, v2

    goto :goto_0
.end method

.method public setRendition(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->rendition:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 54
    return-void
.end method

.method public setRenditionHeight(F)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->renditionHeight:F

    .line 62
    return-void
.end method

.method public setRenditionWidth(F)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->renditionWidth:F

    .line 70
    return-void
.end method

.method public setStyleData(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;->styleData:Lorg/json/JSONObject;

    .line 46
    return-void
.end method
