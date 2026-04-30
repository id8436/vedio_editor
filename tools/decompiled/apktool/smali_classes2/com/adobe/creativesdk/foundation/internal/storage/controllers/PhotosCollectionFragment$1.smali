.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;
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
    .line 144
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->configureMultiSelectViews()V

    .line 148
    return-void
.end method
