.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;
.source "PhotosCollectionListView.java"


# instance fields
.field isSearch:Z

.field query:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView$PhotoListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosBaseListView;Landroid/content/Context;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->isSearch:Z

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->query:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private getRightMargin()I
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    const/16 v0, 0xa

    .line 197
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 198
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->access$102(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;I)I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getPhotosList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->isSearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->searchCollections(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->_photoCollectionsList:Ljava/util/ArrayList;

    return-object v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobePhotoCollectionsDataSource;->getCollections()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleCellPostCreation(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;)V
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/16 v4, 0x8

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->forceAspectRatio(F)V

    .line 169
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_selectBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_imageViewAssetPicture:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_assetgrid_assetcell_bottom_title_section:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 175
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_modified_date:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_size:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 179
    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_file_icon:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 180
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_files_menu_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView$PhotosCollectionListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionListView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;->_menuIcon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 189
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    return-void
.end method
