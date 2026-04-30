.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;
.super Ljava/lang/Object;
.source "AssetViewFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1463
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    const/4 v0, 0x0

    .line 1470
    :goto_0
    return v0

    .line 1468
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->access$402(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleSearchFunctionality(Ljava/lang/String;)Z

    .line 1470
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->val$activity:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1476
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1477
    if-eqz v1, :cond_0

    .line 1478
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 1480
    const/4 v0, 0x1

    return v0
.end method
