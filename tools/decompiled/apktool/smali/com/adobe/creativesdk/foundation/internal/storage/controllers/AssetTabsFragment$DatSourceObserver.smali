.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;
.super Ljava/lang/Object;
.source "AssetTabsFragment.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 379
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 381
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeDataSourceReady:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_1

    .line 383
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "DataSourceReady"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 384
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$1;)V

    .line 385
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->assetsTabName:Ljava/lang/String;

    .line 386
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->fragmentDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->notifyDataSetChanged()V

    .line 396
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V

    .line 398
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    move-result-object v0

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->assetsTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->dynamicallyAddTab(Ljava/lang/String;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->notifyDataSetChanged()V

    .line 404
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V

    goto :goto_0
.end method
