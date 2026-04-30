.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;
.super Ljava/lang/Object;
.source "AssetsAbsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->onScroll(Landroid/widget/AbsListView;III)V

    .line 114
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->handleScrollOffsetChange()V

    .line 110
    :cond_0
    return-void
.end method
