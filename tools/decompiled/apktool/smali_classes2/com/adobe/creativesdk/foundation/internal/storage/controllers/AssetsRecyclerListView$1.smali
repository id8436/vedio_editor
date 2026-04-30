.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AssetsRecyclerListView.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 33
    if-nez p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->handleScrollOffsetChange()V

    .line 37
    :cond_0
    return-void
.end method
