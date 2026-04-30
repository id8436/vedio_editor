.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$7;
.super Ljava/lang/Object;
.source "AssetViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private extended:Z

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;)V
    .locals 1

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$7;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$7;->extended:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1655
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$7;->extended:Z

    if-nez v0, :cond_0

    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$7;->extended:Z

    .line 1657
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1658
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1660
    :cond_0
    return-void
.end method
