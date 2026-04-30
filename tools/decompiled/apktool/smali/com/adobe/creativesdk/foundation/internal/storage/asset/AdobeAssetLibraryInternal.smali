.class public Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;
.source "AdobeAssetLibraryInternal.java"


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V

    .line 55
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setGUID(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setHref(Ljava/net/URI;)V

    .line 58
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->setEtag(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getItemFromId(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 130
    :cond_1
    :goto_1
    return-object v0

    .line 68
    :sswitch_0
    const-string/jumbo v2, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "application/vnd.adobe.element.layerstyle+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "application/vnd.adobe.element.pattern+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "application/vnd.adobe.element.template+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "application/vnd.adobe.element.material+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v2, "application/vnd.adobe.element.light+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v2, "application/vnd.adobe.element.3d+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "application/vnd.adobe.element.animation+dcx"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getImages()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getImages()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getImages()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 75
    :pswitch_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getColors()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getColors()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getColors()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 80
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getColorThemes()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getColorThemes()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getColorThemes()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 85
    :pswitch_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getBrushes()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getBrushes()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getBrushes()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 90
    :pswitch_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getCharacterStyles()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getCharacterStyles()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getCharacterStyles()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 95
    :pswitch_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getLayoutStyles()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getLayoutStyles()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getLayoutStyles()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 100
    :pswitch_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getLooks()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getLooks()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getLooks()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 105
    :pswitch_7
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getPatterns()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getPatterns()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getPatterns()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 109
    :pswitch_8
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getTemplates()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getTemplates()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getTemplates()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 113
    :pswitch_9
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DMaterials()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DMaterials()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DMaterials()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 117
    :pswitch_a
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DLight()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DLight()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DLight()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 121
    :pswitch_b
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DModels()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DModels()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->get3DModels()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 125
    :pswitch_c
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getAnimations()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getAnimations()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/asset/AdobeAssetLibraryInternal;->getAnimations()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem;

    goto/16 :goto_1

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7682ff19 -> :sswitch_9
        -0x58831c81 -> :sswitch_1
        -0x4ee790a1 -> :sswitch_6
        -0x32957946 -> :sswitch_8
        -0x1f36252f -> :sswitch_b
        -0x2ed5e89 -> :sswitch_0
        -0xf3b618 -> :sswitch_4
        0x1cde5c0 -> :sswitch_5
        0x1e844c06 -> :sswitch_2
        0x2d3a87d6 -> :sswitch_3
        0x5a48d7b2 -> :sswitch_a
        0x62de85ac -> :sswitch_7
        0x66844020 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public loadMetadataForLibrary()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->loadLibraryMetadata()V

    .line 63
    return-void
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 138
    return-void
.end method
