.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$3;
.super Ljava/lang/Object;
.source "PhotosCollectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosCollectionFragment;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 291
    return-void
.end method
