.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$6;
.super Ljava/lang/Object;
.source "AssetViewFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->showOrHideUploadMenuItem()V

    .line 700
    return-void
.end method
