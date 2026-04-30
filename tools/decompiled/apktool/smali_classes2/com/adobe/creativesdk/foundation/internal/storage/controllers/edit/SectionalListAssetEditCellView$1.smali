.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView$1;
.super Ljava/lang/Object;
.source "SectionalListAssetEditCellView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/SectionalListAssetEditCellView;)V

    .line 43
    return-void
.end method
