.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AdobeShowUploadTasksActivity.java"


# static fields
.field private static T:Ljava/lang/String;

.field private static active:Z


# instance fields
.field protected _internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

.field private _upload_sessions_observer:Ljava/util/Observer;

.field private mActiveUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

.field private mActiveUploadsAdapterData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mHistoryUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListOfCustomEndPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mUploadEmptyStateView:Landroid/widget/RelativeLayout;

.field private mUploadHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private mUploadHistoryFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadHistoryFileStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->active:Z

    .line 60
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    .line 68
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryFilePaths:Ljava/util/ArrayList;

    .line 69
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryFileStatus:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mListOfCustomEndPoints:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapterData:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mObservers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->active:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapterData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryFilePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryFileStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    return-object v0
.end method

.method private addEndPointsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 101
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mListOfCustomEndPoints:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method private addUploadAssetsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 108
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomUploadInfo;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapterData:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private createActiveUploadsAdapterData()V
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mListOfCustomEndPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mListOfCustomEndPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;

    .line 174
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v2

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPoint:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->addUploadAssetsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPointType:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v2

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v2

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPoint:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->addUploadAssetsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_2
    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v2

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v2

    .line 186
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobePhotoCollection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$CustomEndPointInfo;->endPoint:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->addUploadAssetsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_3
    return-void
.end method

.method private createHistoryUploadsAdapterData()V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadHistoryManager;->getStoredSessionData()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    .line 195
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->populateUploadHistoryData()V

    .line 196
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mTitleView:Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method private setUpActiveUploadsRecyclerView()V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 157
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    .line 158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 159
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 160
    return-void
.end method

.method private setUpHistoryUploadsRecyclerView()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 165
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mHistoryUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;

    .line 166
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mHistoryUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 167
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 168
    return-void
.end method

.method private setUpToolBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 262
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_loki_status_bar:I

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public checkForEmptyUploads()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapterData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadEmptyStateView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapterData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getThumbnail(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 295
    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    const-string/jumbo v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    mul-int/lit8 v0, p3, 0x2

    mul-int/lit8 v2, p3, 0x2

    invoke-static {p2, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->decodeSampledBitmapFromResource(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 302
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 303
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->T:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getEmptyCellImageForExtension(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 306
    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 320
    :goto_1
    return-object v0

    .line 298
    :cond_1
    :try_start_2
    const-string/jumbo v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 309
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeAssetInfoUtil;->getGenericImageForExtension(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 310
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 315
    :goto_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->T:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 318
    :goto_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->T:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    .line 314
    :catch_3
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->activity_adobe_show_upload_tasks:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setContentView(I)V

    .line 203
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_actionbar_title_upload:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mTitleView:Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    .line 204
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_uploading_tasks_RecyclerView:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 205
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_uploads_history_RecyclerView:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 206
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->upload_toolbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 207
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->uploads_empty_state_view:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadEmptyStateView:Landroid/widget/RelativeLayout;

    .line 208
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    .line 209
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setUpToolBar()V

    .line 210
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mListOfCustomEndPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapterData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->populateEndPointsToList()V

    .line 214
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->registerLocalNotifications()V

    .line 215
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->createActiveUploadsAdapterData()V

    .line 216
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->createHistoryUploadsAdapterData()V

    .line 217
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setUpActiveUploadsRecyclerView()V

    .line 218
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setUpHistoryUploadsRecyclerView()V

    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mActiveUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowUploadsRecyclerAdapter;->notifyDataSetChanged()V

    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mHistoryUploadsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$AdobeShowHistoryUploadsRecyclerAdapter;->notifyDataSetChanged()V

    .line 221
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->checkForEmptyUploads()V

    .line 223
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 290
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->finish()V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 247
    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->active:Z

    .line 248
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->checkForNoUploadSessions()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->showLastUploads:Z

    .line 250
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->upload_activity_title_finished:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setTitle(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->showLastUploads:Z

    .line 253
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->upload_activity_title_running:I

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->active:Z

    .line 284
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 285
    return-void
.end method

.method public populateEndPointsToList()V
    .locals 2

    .prologue
    .line 114
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getListOfEndPoints()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeAssetFolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->addEndPointsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;)V

    .line 115
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getListOfEndPoints()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobeDCXManifest:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->addEndPointsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;)V

    .line 116
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getListOfEndPoints()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;->AdobePhotoCollection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->addEndPointsToList(Ljava/util/List;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$EndPointType;)V

    .line 118
    return-void
.end method

.method public populateUploadHistoryData()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryFilePaths:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistory:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryFileStatus:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->mUploadHistoryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method protected registerLocalNotifications()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_upload_sessions_observer:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_upload_sessions_observer:Ljava/util/Observer;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNoUploadSessions:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_upload_sessions_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUploadSessionsActive:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeShowUploadTasksActivity;->_upload_sessions_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 152
    return-void
.end method
