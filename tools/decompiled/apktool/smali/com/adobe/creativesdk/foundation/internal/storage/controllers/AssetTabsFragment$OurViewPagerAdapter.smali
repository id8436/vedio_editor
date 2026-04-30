.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "AssetTabsFragment.java"


# instance fields
.field mPageReferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    .line 297
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->mPageReferenceMap:Ljava/util/Map;

    .line 299
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->mPageReferenceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->mPageReferenceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->fragmentDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    .line 306
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getClassTag()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;->getArgumentsBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Landroid/support/v4/app/Fragment$InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->mPageReferenceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/support/v4/app/Fragment$InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 310
    :goto_0
    return-object v0

    .line 308
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->assetsTabName:Ljava/lang/String;

    return-object v0
.end method
