.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;
.super Ljava/lang/Object;
.source "StaggeredGridAssetCellView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridAssetCellView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
