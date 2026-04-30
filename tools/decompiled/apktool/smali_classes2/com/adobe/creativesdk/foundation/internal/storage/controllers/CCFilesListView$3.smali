.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;
.super Ljava/lang/Object;
.source "CCFilesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;->_originalAssetsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->attachBaseAdapterToListView(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 397
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->access$002(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$UploadRelatedData;

    .line 398
    return-void
.end method
