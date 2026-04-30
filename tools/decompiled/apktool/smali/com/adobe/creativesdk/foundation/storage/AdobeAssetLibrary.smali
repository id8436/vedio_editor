.class public Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;
.source "AdobeAssetLibrary.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AdobeAssetLibraryItemStockImageTrackingDataKey:Ljava/lang/String; = "adobestock#trackingdata"


# instance fields
.field private animations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private brushes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;",
            ">;"
        }
    .end annotation
.end field

.field private characterStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private colorThemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;",
            ">;"
        }
    .end annotation
.end field

.field private colors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;",
            ">;"
        }
    .end annotation
.end field

.field private images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;",
            ">;"
        }
    .end annotation
.end field

.field private layoutStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;",
            ">;"
        }
    .end annotation
.end field

.field private libraryID:Ljava/lang/String;

.field private lights:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;",
            ">;"
        }
    .end annotation
.end field

.field private looks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;",
            ">;"
        }
    .end annotation
.end field

.field private materials:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;",
            ">;"
        }
    .end annotation
.end field

.field private models:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;",
            ">;"
        }
    .end annotation
.end field

.field private patterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;",
            ">;"
        }
    .end annotation
.end field

.field private templates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;-><init>()V

    .line 253
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->initcommon()V

    .line 254
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 259
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->initcommon()V

    .line 260
    return-void
.end method

.method private initcommon()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->brushes:Ljava/util/HashMap;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyles:Ljava/util/HashMap;

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colors:Ljava/util/HashMap;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemes:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->layoutStyles:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->images:Ljava/util/HashMap;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->looks:Ljava/util/HashMap;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->patterns:Ljava/util/HashMap;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->templates:Ljava/util/HashMap;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->materials:Ljava/util/HashMap;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->lights:Ljava/util/HashMap;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->models:Ljava/util/HashMap;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->animations:Ljava/util/HashMap;

    .line 250
    return-void
.end method

.method private static isManifestNodeStockImage(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z
    .locals 4

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 852
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 855
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    const-string/jumbo v2, "adobestock#trackingdata"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 863
    if-eqz v0, :cond_0

    .line 865
    const/4 v0, 0x1

    .line 869
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method characterStyleNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 4

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 763
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 765
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.characterstyle+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method colorNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 4

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 712
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 714
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.color+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method colorRenditionNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 4

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 727
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 730
    const-string/jumbo v2, "library#rel"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "library#rel"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "rendition"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method colorThemeNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 4

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 748
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.colortheme+json"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colors:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemes:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->images:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->images:Ljava/util/HashMap;

    .line 837
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyles:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->brushes:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->brushes:Ljava/util/HashMap;

    .line 838
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->layoutStyles:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->layoutStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->looks:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->looks:Ljava/util/HashMap;

    .line 839
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_6
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->patterns:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_7
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->templates:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->templates:Ljava/util/HashMap;

    .line 840
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_8
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->materials:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->materials:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_9
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->lights:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->lights:Ljava/util/HashMap;

    .line 841
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_a
    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->models:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->models:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->animations:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->animations:Ljava/util/HashMap;

    .line 842
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 844
    return v0

    :cond_1
    move v0, v1

    .line 836
    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 837
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 838
    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v1

    .line 839
    goto :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v1

    .line 840
    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    .line 841
    goto :goto_a

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 815
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    if-eqz v0, :cond_0

    .line 816
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 818
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get3DLight()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->lights:Ljava/util/HashMap;

    return-object v0
.end method

.method public get3DMaterials()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->materials:Ljava/util/HashMap;

    return-object v0
.end method

.method public get3DModels()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->models:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAnimations()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->animations:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBrushes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->brushes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCharacterStyles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyles:Ljava/util/HashMap;

    return-object v0
.end method

.method public getColorThemes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getColors()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colors:Ljava/util/HashMap;

    return-object v0
.end method

.method public getImages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->images:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLayoutStyles()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->layoutStyles:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLooks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->looks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPatterns()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->patterns:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTemplates()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->templates:Ljava/util/HashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 827
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->hashCode()I

    move-result v0

    return v0
.end method

.method protected loadLibraryMetadata()V
    .locals 44

    .prologue
    .line 263
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    .line 268
    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 270
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllChildren()Ljava/util/Map;

    move-result-object v1

    .line 273
    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->libraryID:Ljava/lang/String;

    .line 276
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 277
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 278
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 279
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 280
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 281
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V

    .line 282
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 283
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 284
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 285
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 286
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 287
    new-instance v41, Ljava/util/HashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashMap;-><init>()V

    .line 288
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 290
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_0
    :goto_0
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 291
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->primaryComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    .line 293
    const/4 v1, 0x0

    .line 294
    if-eqz v3, :cond_1

    .line 295
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_1
    iget-object v3, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 299
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 300
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 303
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 304
    const/4 v3, 0x0

    .line 305
    const/4 v5, 0x0

    .line 306
    const/4 v6, 0x0

    .line 307
    const/4 v7, 0x0

    .line 308
    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 310
    iget-object v5, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v6

    .line 311
    const-string/jumbo v5, "image/png"

    iput-object v5, v6, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 312
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 315
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v6

    .line 316
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v7

    .line 319
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;

    invoke-direct/range {v1 .. v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 322
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 324
    :cond_3
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyleNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 327
    const-string/jumbo v3, "characterstyle#data"

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 329
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 330
    const/4 v3, 0x0

    .line 331
    const/4 v5, 0x0

    .line 332
    const/4 v6, 0x0

    .line 333
    const/4 v7, 0x0

    .line 334
    if-eqz v1, :cond_4

    .line 335
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 336
    iget-object v5, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v6

    .line 337
    const-string/jumbo v5, "image/png"

    iput-object v5, v6, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 338
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 341
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v6

    .line 342
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v7

    .line 345
    :cond_4
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;

    invoke-direct/range {v1 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lorg/json/JSONObject;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 347
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 349
    :cond_5
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 353
    const/4 v12, 0x0

    .line 354
    const/4 v13, 0x0

    .line 355
    const/4 v14, 0x0

    .line 356
    const/4 v15, 0x0

    .line 357
    const/16 v16, 0x0

    .line 359
    if-eqz v1, :cond_6

    .line 360
    const-string/jumbo v3, "color#data"

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 361
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 362
    const-string/jumbo v3, "mode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 363
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 364
    const-string/jumbo v3, "alpha"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 365
    const-string/jumbo v4, "profileName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v15, v3

    .line 367
    :cond_6
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorRenditionNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 368
    const/4 v11, 0x0

    .line 369
    const/16 v17, 0x0

    .line 370
    const/16 v18, 0x0

    .line 371
    const/16 v19, 0x0

    .line 372
    const/16 v20, 0x0

    .line 373
    const/16 v21, 0x0

    .line 374
    if-eqz v1, :cond_7

    .line 375
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v11

    .line 376
    const-string/jumbo v3, "color#data"

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 377
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 378
    const-string/jumbo v3, "mode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 379
    const-string/jumbo v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 380
    const-string/jumbo v3, "alpha"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 381
    const-string/jumbo v4, "profileName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v20, v3

    .line 385
    :cond_7
    new-instance v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;

    move-object v10, v2

    move-object/from16 v22, v8

    invoke-direct/range {v9 .. v22}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 392
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;->color()I

    .line 393
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v32

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 394
    :cond_8
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 395
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemeNodeForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 397
    const-string/jumbo v3, "colortheme#data"

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 398
    const-string/jumbo v3, "tags"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 399
    const-string/jumbo v4, "rule"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    const-string/jumbo v5, "mood"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    const-string/jumbo v6, "swatches"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 404
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 406
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 409
    :cond_9
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 410
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->primaryComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    .line 411
    const-string/jumbo v1, ""

    .line 412
    const/16 v23, 0x0

    .line 413
    const/16 v24, 0x0

    .line 414
    const-string/jumbo v18, ""

    .line 416
    if-eqz v3, :cond_a

    .line 417
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v23

    .line 419
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v24

    .line 420
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v18

    .line 423
    :cond_a
    iget-object v3, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 425
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 426
    new-instance v22, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 429
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 430
    const/4 v11, 0x0

    .line 431
    const/4 v12, 0x0

    .line 432
    const/4 v13, 0x0

    .line 433
    const/4 v14, 0x0

    .line 434
    if-eqz v1, :cond_b

    .line 435
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v11

    .line 436
    iget-object v3, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v3

    .line 438
    const-string/jumbo v4, "image/png"

    iput-object v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 439
    new-instance v12, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v4

    invoke-direct {v12, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 442
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v13

    .line 443
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v14

    .line 448
    :cond_b
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->isManifestNodeStockImage(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 458
    new-instance v9, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;

    move-object v10, v2

    move-object v15, v12

    move/from16 v16, v13

    move/from16 v17, v14

    move-object/from16 v19, v8

    invoke-direct/range {v9 .. v19}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemStockImage;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 467
    :goto_1
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v35

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 462
    :cond_c
    new-instance v19, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;

    move-object/from16 v20, v2

    move-object/from16 v21, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v18

    move-object/from16 v29, v8

    invoke-direct/range {v19 .. v29}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILjava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    move-object/from16 v9, v19

    goto :goto_1

    .line 470
    :cond_d
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.layerstyle+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 471
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->primaryComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    .line 472
    const/4 v1, 0x0

    .line 473
    if-eqz v3, :cond_e

    .line 474
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    .line 476
    :cond_e
    iget-object v3, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v1

    .line 478
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 479
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 482
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 483
    const/4 v3, 0x0

    .line 484
    const/4 v5, 0x0

    .line 485
    const/4 v6, 0x0

    .line 486
    const/4 v7, 0x0

    .line 487
    if-eqz v1, :cond_f

    .line 488
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 489
    iget-object v5, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v6

    .line 491
    const-string/jumbo v5, "image/png"

    iput-object v5, v6, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 492
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 495
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v6

    .line 496
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v7

    .line 500
    :cond_f
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;

    invoke-direct/range {v1 .. v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 502
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 503
    :cond_10
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 504
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 505
    const/4 v3, 0x0

    .line 506
    const/4 v4, 0x0

    .line 507
    const/4 v5, 0x0

    .line 508
    const/4 v6, 0x0

    .line 509
    if-eqz v1, :cond_11

    .line 510
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 511
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 512
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 513
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 516
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 517
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 520
    :cond_11
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 521
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 522
    :cond_12
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.pattern+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 523
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 524
    const/4 v3, 0x0

    .line 525
    const/4 v4, 0x0

    .line 526
    const/4 v5, 0x0

    .line 527
    const/4 v6, 0x0

    .line 528
    if-eqz v1, :cond_13

    .line 529
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 530
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 531
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 532
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 535
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 536
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 539
    :cond_13
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 540
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 541
    :cond_14
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.template+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 542
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 543
    const/4 v3, 0x0

    .line 544
    const/4 v4, 0x0

    .line 545
    const/4 v5, 0x0

    .line 546
    const/4 v6, 0x0

    .line 547
    if-eqz v1, :cond_15

    .line 548
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 549
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 550
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 551
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 554
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 555
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 558
    :cond_15
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 559
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 560
    :cond_16
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.material+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 561
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 562
    const/4 v3, 0x0

    .line 563
    const/4 v4, 0x0

    .line 564
    const/4 v5, 0x0

    .line 565
    const/4 v6, 0x0

    .line 566
    if-eqz v1, :cond_17

    .line 567
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 568
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 569
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 570
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 573
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 574
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 577
    :cond_17
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 578
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 579
    :cond_18
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.light+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 580
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 581
    const/4 v3, 0x0

    .line 582
    const/4 v4, 0x0

    .line 583
    const/4 v5, 0x0

    .line 584
    const/4 v6, 0x0

    .line 585
    if-eqz v1, :cond_19

    .line 586
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 587
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 588
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 589
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 592
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 593
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 596
    :cond_19
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 597
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 598
    :cond_1a
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.3d+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 599
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 600
    const/4 v3, 0x0

    .line 601
    const/4 v4, 0x0

    .line 602
    const/4 v5, 0x0

    .line 603
    const/4 v6, 0x0

    .line 604
    if-eqz v1, :cond_1b

    .line 605
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 606
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 607
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 608
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 611
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 612
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 615
    :cond_1b
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 616
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 617
    :cond_1c
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "application/vnd.adobe.element.animation+dcx"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {v8, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 620
    const/4 v3, 0x0

    .line 621
    const/4 v4, 0x0

    .line 622
    const/4 v5, 0x0

    .line 623
    const/4 v6, 0x0

    .line 624
    if-eqz v1, :cond_1d

    .line 625
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 626
    iget-object v4, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->href:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v5

    .line 627
    const-string/jumbo v4, "image/png"

    iput-object v4, v5, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->type:Ljava/lang/String;

    .line 628
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v8}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 631
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    move-result v5

    .line 632
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    move-result v6

    .line 635
    :cond_1d
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;IILcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 636
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 641
    :cond_1e
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 642
    move-object/from16 v0, v30

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->brushes:Ljava/util/HashMap;

    .line 644
    :cond_1f
    invoke-virtual/range {v31 .. v31}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 645
    move-object/from16 v0, v31

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyles:Ljava/util/HashMap;

    .line 647
    :cond_20
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 648
    move-object/from16 v0, v32

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colors:Ljava/util/HashMap;

    .line 650
    :cond_21
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 651
    move-object/from16 v0, v33

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemes:Ljava/util/HashMap;

    .line 653
    :cond_22
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 654
    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->layoutStyles:Ljava/util/HashMap;

    .line 656
    :cond_23
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 657
    move-object/from16 v0, v35

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->images:Ljava/util/HashMap;

    .line 659
    :cond_24
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 660
    move-object/from16 v0, v36

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->looks:Ljava/util/HashMap;

    .line 662
    :cond_25
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 663
    move-object/from16 v0, v37

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->patterns:Ljava/util/HashMap;

    .line 665
    :cond_26
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 666
    move-object/from16 v0, v38

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->templates:Ljava/util/HashMap;

    .line 668
    :cond_27
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 669
    move-object/from16 v0, v39

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->materials:Ljava/util/HashMap;

    .line 671
    :cond_28
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 672
    move-object/from16 v0, v40

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->lights:Ljava/util/HashMap;

    .line 674
    :cond_29
    invoke-virtual/range {v41 .. v41}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2a

    .line 675
    move-object/from16 v0, v41

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->models:Ljava/util/HashMap;

    .line 677
    :cond_2a
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 678
    move-object/from16 v0, v42

    iput-object v0, v8, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->animations:Ljava/util/HashMap;

    .line 683
    :cond_2b
    return-void
.end method

.method public loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 690
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 693
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;)V

    .line 704
    invoke-super {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->loadMetadata(Lcom/adobe/creativesdk/foundation/storage/IAdobeRequestCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 706
    return-void
.end method

.method protected primaryComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 4

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentsOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 779
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 781
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected renditionComponentForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 4

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getComponentsOfChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 794
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 796
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rendition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image/png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image/jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected set3DLights(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DLight;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->lights:Ljava/util/HashMap;

    .line 224
    return-void
.end method

.method protected set3DMaterials(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DMaterial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->materials:Ljava/util/HashMap;

    .line 228
    return-void
.end method

.method protected set3DModels(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItem3DModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->models:Ljava/util/HashMap;

    .line 220
    return-void
.end method

.method protected setAnimations(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemAnimation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->animations:Ljava/util/HashMap;

    .line 232
    return-void
.end method

.method protected setBrushes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemBrush;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->brushes:Ljava/util/HashMap;

    .line 196
    return-void
.end method

.method protected setCharacterStyles(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemCharacterStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->characterStyles:Ljava/util/HashMap;

    .line 204
    return-void
.end method

.method protected setColorThemes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColorTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colorThemes:Ljava/util/HashMap;

    .line 188
    return-void
.end method

.method protected setColors(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->colors:Ljava/util/HashMap;

    .line 184
    return-void
.end method

.method protected setImages(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->images:Ljava/util/HashMap;

    .line 192
    return-void
.end method

.method protected setLayoutStyles(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetLibraryItemLayoutStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->layoutStyles:Ljava/util/HashMap;

    .line 208
    return-void
.end method

.method protected setLooks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemLook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->looks:Ljava/util/HashMap;

    .line 200
    return-void
.end method

.method protected setPatterns(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemPattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->patterns:Ljava/util/HashMap;

    .line 212
    return-void
.end method

.method protected setTemplates(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibraryItemTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->templates:Ljava/util/HashMap;

    .line 216
    return-void
.end method
