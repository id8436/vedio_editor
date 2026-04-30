.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$1;
.super Ljava/lang/Object;
.source "AssetListCellView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->toggleItemMarkSelection()V

    .line 301
    return-void
.end method
