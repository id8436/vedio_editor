.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;
.source "AdobeDesignLibraryItemsCellHolders.java"


# instance fields
.field private imageUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;-><init>(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public static createInstance(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;
    .locals 3

    .prologue
    .line 407
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;-><init>()V

    .line 408
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_library_items_imagecollectioncell:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;->initializeFromLayout(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)V

    .line 409
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;-><init>(Landroid/view/View;)V

    .line 410
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;->setImageUploadCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;)V

    .line 411
    return-object v1
.end method


# virtual methods
.method public getImageUploadCellView()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;->imageUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;

    return-object v0
.end method

.method public setImageUploadCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$UploadingImageCollectionCellHolder;->imageUploadCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryImageUploadCellView;

    .line 420
    return-void
.end method
