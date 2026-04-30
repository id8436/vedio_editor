.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;
.super Ljava/lang/Object;
.source "AssetsRecyclerListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

.field final synthetic val$firstItemPos:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;->val$firstItemPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$3;->val$firstItemPos:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 226
    return-void
.end method
