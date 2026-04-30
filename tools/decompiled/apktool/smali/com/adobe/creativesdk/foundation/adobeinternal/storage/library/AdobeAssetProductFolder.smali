.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
.source "AdobeAssetProductFolder.java"


# static fields
.field static final kAdobeProductIdComp:Ljava/lang/String; = "adobe-layup"

.field static final kAdobeProductIdCompAndroid:Ljava/lang/String; = "adobecompandroid"

.field static final kAdobeProductIdDraw:Ljava/lang/String; = "adobedraw"

.field static final kAdobeProductIdDrawAndroid:Ljava/lang/String; = "adobedrawandroid"

.field static final kAdobeProductIdFix:Ljava/lang/String; = "adobe-psfix"

.field static final kAdobeProductIdFixAndroid:Ljava/lang/String; = "adobefixandroid"

.field static final kAdobeProductIdFixCLS:Ljava/lang/String; = "adobe-psfix-cls"

.field static final kAdobeProductIdLibrary:Ljava/lang/String; = "adobe-libraries"

.field static final kAdobeProductIdMix:Ljava/lang/String; = "adobe-psmix"

.field static final kAdobeProductIdMixCLS:Ljava/lang/String; = "adobeclsmix"

.field static final kAdobeProductIdSharedMaxDemo:Ljava/lang/String; = "adobeclsdemo"

.field static final kAdobeProductIdSharedMultiPage:Ljava/lang/String; = "adobeclsprojects"

.field static final kAdobeProductIdSharedSinglePage:Ljava/lang/String; = "adobecls"

.field static final kAdobeProductIdSketch:Ljava/lang/String; = "adobesketch"

.field static final kAdobeProductIdSketchAndroid:Ljava/lang/String; = "adobesketch-android"

.field static productMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    .line 133
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductDraw:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adobedraw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductLibrary:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adobe-libraries"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductSketch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adobesketch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSMix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adobe-psmix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductPSFix:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adobe-psfix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->AdobeAssetProductComposition:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adobe-layup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    .line 143
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->asrCollection:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    return-object p1
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->firstPageLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    return-object v0
.end method

.method private static addAlternateRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$library$AdobeAssetProduct:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 258
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    const-string/jumbo v2, "/assets/%s/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 262
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v3

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :pswitch_0
    const-string/jumbo v1, "adobecompandroid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :pswitch_1
    const-string/jumbo v1, "adobedrawandroid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :pswitch_2
    const-string/jumbo v1, "adobeclsmix"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :pswitch_3
    const-string/jumbo v1, "adobefixandroid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v1, "adobe-psfix-cls"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :pswitch_4
    const-string/jumbo v1, "adobesketch-android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_0
    return-void

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static addRootForPackage(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->supportsSharedProjectType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 284
    :goto_0
    if-eqz v0, :cond_0

    .line 285
    const-string/jumbo v2, "/assets/%s/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 288
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v3

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    return-void

    .line 272
    :pswitch_0
    const-string/jumbo v0, "adobecls"

    goto :goto_0

    .line 276
    :pswitch_1
    const-string/jumbo v0, "adobeclsprojects"

    goto :goto_0

    .line 280
    :pswitch_2
    const-string/jumbo v0, "adobeclsdemo"

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFolderFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 3

    .prologue
    .line 324
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-static {p0, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-static {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 294
    .line 296
    if-nez p0, :cond_0

    .line 319
    :goto_0
    return-object v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 301
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :try_start_0
    new-instance v2, Ljava/net/URI;

    const-string/jumbo v3, "/assets%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    .line 306
    invoke-virtual {v3, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 308
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v2

    .line 311
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v5

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 319
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getFolderFromHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    return-object v0
.end method

.method public static getRootForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-static {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    move-result-object v0

    return-object v0
.end method

.method public static getRootForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;
    .locals 3

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetProductFolder.getRootForProduct"

    const-string/jumbo v2, "AdobeAssetProduct enum is null"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    goto :goto_0
.end method

.method public static getRootForSharedProjectType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 480
    .line 484
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$2;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackagePages$AdobeAssetPackageSharedProjectType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 498
    :goto_0
    if-eqz v0, :cond_0

    .line 499
    const-string/jumbo v2, "/assets/%s/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v2

    .line 500
    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 502
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v3

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    .line 505
    :goto_1
    return-object v0

    .line 486
    :pswitch_0
    const-string/jumbo v0, "adobecls"

    goto :goto_0

    .line 490
    :pswitch_1
    const-string/jumbo v0, "adobeclsprojects"

    goto :goto_0

    .line 494
    :pswitch_2
    const-string/jumbo v0, "adobeclsdemo"

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    invoke-static {p0, p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->productMap:Ljava/util/Map;

    .line 170
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Undefined product: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 225
    :goto_0
    return-object v0

    .line 177
    :cond_0
    const-string/jumbo v2, "/assets/%s/"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/net/URI;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 180
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderByProperty(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    move-result-object v3

    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getStorageOrderRelation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {p0, p1, p2, p3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->addAlternateRootsForProduct(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProduct;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;Ljava/util/List;)V

    move-object v0, v1

    .line 225
    goto :goto_0
.end method


# virtual methods
.method public getNextPage(ILcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V
    .locals 4

    .prologue
    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->setLimit(I)V

    .line 347
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->etag:Ljava/lang/String;

    .line 349
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;

    invoke-direct {v1, p0, p0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;)V

    .line 464
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->getSession()Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    move-result-object v2

    .line 465
    if-nez v2, :cond_0

    .line 476
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->resourceCollection()Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;

    move-result-object v3

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeAssetProductFolder;->firstPageLoaded:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageNextPageReplace:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->getDirectory(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageCollectionRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;->AdobeStorageFirstPage:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStoragePagingMode;

    goto :goto_1
.end method
