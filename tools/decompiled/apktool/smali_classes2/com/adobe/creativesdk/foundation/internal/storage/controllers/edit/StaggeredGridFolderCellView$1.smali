.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$1;
.super Ljava/lang/Object;
.source "StaggeredGridFolderCellView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/StaggeredGridFolderCellView;)V

    .line 48
    return-void
.end method
