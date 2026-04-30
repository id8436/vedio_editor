.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$3;
.super Ljava/lang/Object;
.source "CCFilesFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 377
    return-void
.end method
