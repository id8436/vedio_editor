.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;
.super Ljava/lang/Object;
.source "PhotosCollectionFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->reloadDataFromDataSource()V

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoCollectionAssetsUploadStatus;->reloadDataAfterUploaded:Z

    .line 160
    :cond_0
    return-void
.end method
