.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$1;
.super Ljava/lang/Object;
.source "MobileCreationPackageCollectionFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/MobileCreationPackageCollectionFragment;->configureMultiSelectViews()V

    .line 180
    return-void
.end method
