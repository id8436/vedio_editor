.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AdobeUploadErrorSummaryFragment.java"


# static fields
.field public static ERROR_LIST_KEY:Ljava/lang/String;


# instance fields
.field private _failedAssetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            ">;"
        }
    .end annotation
.end field

.field private _upload_failed_assets_listview:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "errorlist_key"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->ERROR_LIST_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->_failedAssetsList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->setStyle(II)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 64
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_upload_error_details_dialog:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 67
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_fragment_detail_footer_border_left_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 68
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    aput v2, v0, v5

    aput v2, v0, v4

    aput v2, v0, v3

    aput v2, v0, v6

    .line 70
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v0, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 71
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_upload_error_detials_main_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->_upload_failed_assets_listview:Landroid/widget/ListView;

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->_failedAssetsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_upload_failed_assets_list_item:I

    invoke-direct {v0, p0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment$UploadErrorDetailsListAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;Landroid/content/Context;I)V

    .line 79
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->_upload_failed_assets_listview:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 57
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->destroyInstance()V

    .line 58
    return-void
.end method

.method public setUploadFailedList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadErrorSummaryFragment;->_failedAssetsList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method
