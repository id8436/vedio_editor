.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$2;
.super Ljava/lang/Object;
.source "PhotosAssetsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/PhotosAssetsFragment;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->a()V

    .line 252
    return-void
.end method
