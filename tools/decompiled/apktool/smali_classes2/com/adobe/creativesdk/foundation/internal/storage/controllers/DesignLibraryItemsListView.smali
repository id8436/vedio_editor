.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;
.source "DesignLibraryItemsListView.java"


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private final AdobeDesignLibraryAssetType_3dLight:I

.field private final AdobeDesignLibraryAssetType_3dMaterial:I

.field private final AdobeDesignLibraryAssetType_3dModel:I

.field private final AdobeDesignLibraryAssetType_animation:I

.field private final AdobeDesignLibraryAssetType_brush:I

.field private final AdobeDesignLibraryAssetType_characterStyle:I

.field private final AdobeDesignLibraryAssetType_color:I

.field private final AdobeDesignLibraryAssetType_colorTheme:I

.field private final AdobeDesignLibraryAssetType_image:I

.field private final AdobeDesignLibraryAssetType_image_in_upload:I

.field private final AdobeDesignLibraryAssetType_layoutStyle:I

.field private final AdobeDesignLibraryAssetType_look:I

.field private final AdobeDesignLibraryAssetType_pattern:I

.field private final AdobeDesignLibraryAssetType_template:I

.field private final AdobeDesignLibrarySectionViewType:I

.field private _3dLightElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _3dMaterialElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _3dModelElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _animationElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _brushElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _charStyleElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _colorElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _colorThemeElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _designLibraryItemsClientConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;

.field private _imageElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _imageUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

.field private _layoutStyleElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

.field private _looksElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _patternElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field _reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

.field private _targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private _templateElems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private _twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

.field private _uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

.field private _uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
            ">;"
        }
    .end annotation
.end field

.field private _uploadingImageItemsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            ">;"
        }
    .end annotation
.end field

.field private _waterFallLayoutManager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

    .line 1523
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_color:I

    .line 1524
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_colorTheme:I

    .line 1525
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_brush:I

    .line 1526
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_image:I

    .line 1527
    const/16 v0, 0x21

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_image_in_upload:I

    .line 1528
    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_characterStyle:I

    .line 1529
    const/4 v0, 0x5

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_layoutStyle:I

    .line 1530
    const/4 v0, 0x6

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_look:I

    .line 1531
    const/4 v0, 0x7

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibrarySectionViewType:I

    .line 1532
    const/16 v0, 0x8

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_pattern:I

    .line 1533
    const/16 v0, 0x9

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_template:I

    .line 1534
    const/16 v0, 0xa

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_3dMaterial:I

    .line 1535
    const/16 v0, 0xb

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_3dLight:I

    .line 1536
    const/16 v0, 0xc

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_3dModel:I

    .line 1537
    const/16 v0, 0xd

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->AdobeDesignLibraryAssetType_animation:I

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->rebuildLibraryItems()V

    return-void
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_looksElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)I
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->getUploadingImagesSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_waterFallLayoutManager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_brushElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_charStyleElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_layoutStyleElems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private generateLibraryItemList()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_brushElems:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_charStyleElems:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_layoutStyleElems:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_looksElems:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    .line 217
    return-void
.end method

.method private getUploadingImagesSize()I
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private rebuildLibraryItems()V
    .locals 0

    .prologue
    .line 1517
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->sortLibraryElementsIntoArraysOfValues()V

    .line 1518
    return-void
.end method

.method private shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v2

    .line 370
    if-eqz v2, :cond_1

    move v0, v1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.element.layerstyle+dcx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 374
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    .line 376
    :goto_1
    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_designLibraryItemsClientConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;

    if-eqz v2, :cond_c

    .line 381
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_designLibraryItemsClientConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;->getDesignLibraryItemFilter()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    move-result-object v2

    .line 382
    if-eqz v2, :cond_c

    .line 383
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->getInclusiveDesignLibraryItems()Ljava/util/EnumSet;

    move-result-object v2

    .line 384
    if-eqz v2, :cond_c

    .line 385
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemColors:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 374
    goto :goto_1

    .line 387
    :cond_4
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 388
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemColorThemes:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 389
    :cond_5
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 390
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemImages:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 391
    :cond_6
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.pattern+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 392
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemPattern:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 393
    :cond_7
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.template+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 394
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemTemplate:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 395
    :cond_8
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.material+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 396
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItem3DMaterial:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 397
    :cond_9
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.light+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 398
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItem3DLight:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 399
    :cond_a
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.3d+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 400
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItem3DModel:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 401
    :cond_b
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.adobe.element.animation+dcx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 402
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;->AdobeAssetDesignLibraryItemAnimation:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method private shouldDisplayExtendedLibraryItemsInOneUpView()Z
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private sortLibraryElementsIntoArraysOfValues()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)V

    .line 289
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 290
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_brushElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 293
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_charStyleElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_layoutStyleElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_looksElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 297
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 300
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 301
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 304
    return-void
.end method


# virtual methods
.method public cleanUpUpload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageUploadObservers:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$ImageUploadObservers;->resetBinder()V

    .line 549
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 550
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    .line 551
    return-void
.end method

.method protected createRecyclerViewAdapter(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/widget/RecyclerView;",
            ")",
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    .line 343
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    return-object v0
.end method

.method public generateLibraryItemListofType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 228
    if-eqz p1, :cond_1

    .line 230
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 271
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->generateLibraryItemList()V

    .line 274
    :goto_2
    return-void

    .line 228
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 230
    :sswitch_0
    const-string/jumbo v1, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "application/vnd.adobe.element.layerstyle+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "application/vnd.adobe.element.pattern+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "application/vnd.adobe.element.template+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "application/vnd.adobe.element.material+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "application/vnd.adobe.element.light+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v1, "application/vnd.adobe.element.3d+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "application/vnd.adobe.element.animation+dcx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    .line 232
    :pswitch_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 235
    :pswitch_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 238
    :pswitch_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 241
    :pswitch_3
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_brushElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 244
    :pswitch_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_charStyleElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 247
    :pswitch_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_layoutStyleElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 250
    :pswitch_6
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_looksElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 253
    :pswitch_7
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/pattern/ACLMPatternAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 256
    :pswitch_8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/template/ACLMTemplateAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 259
    :pswitch_9
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/material/ACLM3DMaterialAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 262
    :pswitch_a
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/light/ACLM3DLightAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 265
    :pswitch_b
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/model/ACLM3DModelAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 268
    :pswitch_c
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/animation/ACLMAnimationAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 230
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

.method protected getConcreteRecyclerView(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    return-object v0
.end method

.method protected getItemDecoration(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_library_items_spacing_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 325
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    invoke-direct {v1, v0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;-><init>(II)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    .line 326
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;->setMultiColumnDelegate()V

    .line 327
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uniformItemSpacingItemDecoration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration;

    return-object v0
.end method

.method protected getLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$integer;->adobe_csdk_library_items_columns_GCM:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 349
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;-><init>(I)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_waterFallLayoutManager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;

    .line 351
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$2;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;I)V

    .line 364
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_waterFallLayoutManager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;->setClientSectionsDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager$SectionDetailsDelegate;)V

    .line 365
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_waterFallLayoutManager:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeWaterFallLayoutManager;

    return-object v0
.end method

.method protected getMainRootView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 313
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 316
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assets_library_items_view:I

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 317
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_libraryitemsview_swipe_refresh_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 318
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_library_design_items_twowayview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_twowayRecyclerView:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/TwoWayView;

    .line 319
    return-object v1
.end method

.method protected getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method protected handleItemClick(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;

    .line 418
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;->getLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v3

    .line 419
    if-nez v3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-direct {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;-><init>()V

    .line 426
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    .line 430
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 432
    :goto_1
    if-eqz v0, :cond_2

    .line 433
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 437
    :goto_2
    if-eqz v0, :cond_3

    .line 438
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 443
    :goto_3
    if-eqz v0, :cond_4

    .line 444
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 448
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 449
    :goto_4
    if-eqz v0, :cond_5

    .line 450
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 453
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 454
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 455
    :goto_5
    if-eqz v0, :cond_6

    .line 456
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 459
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 460
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 461
    :goto_6
    if-eqz v0, :cond_7

    .line 462
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    :cond_7
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 466
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    .line 467
    :goto_7
    if-eqz v0, :cond_8

    .line 468
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 471
    :cond_8
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 472
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 473
    :goto_8
    if-eqz v0, :cond_9

    .line 474
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 477
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 478
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisableLibraryItem(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    .line 479
    :goto_9
    if-eqz v0, :cond_a

    .line 480
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 483
    :cond_a
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->shouldDisplayExtendedLibraryItemsInOneUpView()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 484
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 485
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/charStyle/ACLMCharStyleAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 490
    :cond_b
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->_itemsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/LibraryDesignItemsOneUpData;->startIndex:I

    .line 491
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 492
    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleAssetClickAction(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 431
    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 436
    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 442
    goto/16 :goto_3

    :cond_f
    move v0, v2

    .line 448
    goto/16 :goto_4

    :cond_10
    move v0, v2

    .line 454
    goto/16 :goto_5

    :cond_11
    move v0, v2

    .line 460
    goto/16 :goto_6

    :cond_12
    move v0, v2

    .line 466
    goto/16 :goto_7

    :cond_13
    move v0, v2

    .line 472
    goto/16 :goto_8

    :cond_14
    move v0, v2

    .line 478
    goto :goto_9
.end method

.method protected handleListItemLongClick(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;

    .line 499
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;->getLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 502
    if-nez v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 506
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handleLongClickOnAsset(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handlePopupMenuClick(ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;

    .line 513
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;->getLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 515
    if-nez v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 519
    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->handlePopupMenuClick(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_0
.end method

.method public refreshDueToDataChange()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;->invalidateAdapter()V

    .line 527
    return-void
.end method

.method public refreshDueToNewItemsInsertion()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;->invalidateAdapter()V

    .line 532
    return-void
.end method

.method public searchInLibrary(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    .line 127
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setMatchAny(Z)V

    .line 128
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setName(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getAllElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_brushElems:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_charStyleElems:Ljava/util/ArrayList;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_layoutStyleElems:Ljava/util/ArrayList;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_looksElems:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 147
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getType()Ljava/lang/String;

    move-result-object v5

    .line 148
    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_imageElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :sswitch_0
    const-string/jumbo v6, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "application/vnd.adobe.element.characterstyle+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "application/vnd.adobe.element.layerstyle+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "application/vnd.adobe.element.look+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "application/vnd.adobe.element.pattern+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v6, "application/vnd.adobe.element.template+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v6, "application/vnd.adobe.element.material+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v6, "application/vnd.adobe.element.light+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v6, "application/vnd.adobe.element.3d+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v6, "application/vnd.adobe.element.animation+dcx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :pswitch_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_colorThemeElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 159
    :pswitch_3
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_brushElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 162
    :pswitch_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_charStyleElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 165
    :pswitch_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_layoutStyleElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 168
    :pswitch_6
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_looksElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :pswitch_7
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_patternElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 174
    :pswitch_8
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_templateElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    :pswitch_9
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dMaterialElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 180
    :pswitch_a
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dLightElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 183
    :pswitch_b
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_3dModelElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 186
    :pswitch_c
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_animationElems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->refreshDueToDataChange()V

    .line 195
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->showEmptySearch()V

    .line 196
    return v2

    .line 148
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

.method public setClientViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_designLibraryItemsClientConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDesignLibraryCollectionConfiguration;

    .line 536
    return-void
.end method

.method public setReusableImageWorker(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_reusableImageWorker:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    .line 309
    return-void
.end method

.method public setTargetLibraryComposite(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_targetLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 221
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->generateLibraryItemList()V

    .line 223
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->sortLibraryElementsIntoArraysOfValues()V

    .line 224
    return-void
.end method

.method public setupUpload(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 540
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    .line 542
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadingImageItemsArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_uploadSession:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;->invalidateAdapter()V

    .line 545
    :cond_0
    return-void
.end method

.method public showEmptySearch()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->_libraryItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;->checkToSetEmptySearchView(Z)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
