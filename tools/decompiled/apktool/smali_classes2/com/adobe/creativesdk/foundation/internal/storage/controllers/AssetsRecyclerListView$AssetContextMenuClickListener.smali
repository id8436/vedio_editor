.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;
.super Ljava/lang/Object;
.source "AssetsRecyclerListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private positionClicked:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;I)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;->positionClicked:I

    .line 236
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$AssetContextMenuClickListener;->positionClicked:I

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->handlePopupMenuClick(ILandroid/view/View;)V

    .line 241
    return-void
.end method
