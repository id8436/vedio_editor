.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$3;
.super Ljava/lang/Object;
.source "PhotosAssetsFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->configureMultiSelectViews()V

    .line 477
    return-void
.end method
