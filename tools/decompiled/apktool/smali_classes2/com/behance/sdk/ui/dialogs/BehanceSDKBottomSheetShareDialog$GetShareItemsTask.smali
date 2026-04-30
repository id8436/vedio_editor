.class Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;
.super Landroid/os/AsyncTask;
.source "BehanceSDKBottomSheetShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
        ">;>;"
    }
.end annotation


# instance fields
.field callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;

.field packageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 459
    iput-object p2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;

    .line 460
    iput-object p3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->packageManager:Landroid/content/pm/PackageManager;

    .line 461
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->this$0:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;

    invoke-static {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;->access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog;)Landroid/content/Intent;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 472
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 473
    const-string/jumbo v3, "facebook.katana"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    const-string/jumbo v3, "twitter.android"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    const-string/jumbo v3, "pinterest.act"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 477
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 478
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 479
    if-eqz v4, :cond_0

    .line 480
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 481
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 482
    new-instance v5, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    invoke-direct {v5}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;-><init>()V

    .line 483
    invoke-virtual {v5, v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setPackageName(Ljava/lang/String;)V

    .line 484
    iget-object v6, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayLabel(Ljava/lang/String;)V

    .line 485
    iget-object v6, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 486
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 454
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsTask;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKBottomSheetShareDialog$GetShareItemsCallbacks;->onFinish(Ljava/util/List;)V

    .line 500
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 501
    return-void
.end method
