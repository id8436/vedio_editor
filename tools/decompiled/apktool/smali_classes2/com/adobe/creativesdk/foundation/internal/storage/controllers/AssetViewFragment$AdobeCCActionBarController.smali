.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
.source "AssetViewFragment.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V
    .locals 0

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    return-void
.end method

.method private refreshOptionsInternal()V
    .locals 2

    .prologue
    .line 1766
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getNotificationManager()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    .line 1767
    if-eqz v0, :cond_0

    .line 1768
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getUnreadCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;I)V

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1771
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1772
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1782
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isNetworkOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    .line 1783
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1784
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1786
    :cond_3
    return-void
.end method


# virtual methods
.method protected handleOptionItemSelect(I)Z
    .locals 3

    .prologue
    .line 1802
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_asset_browser_adobe_notification:I

    if-ne p1, v0, :cond_0

    .line 1803
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ACTION_MENU_NOTIFICATION:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 1804
    const/4 v0, 0x1

    .line 1807
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleOptionItemSelect(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1737
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$menu;->adobe_loki_notification_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1738
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_notification_bell:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$702(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1740
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_notification_icon_view:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/view/View;)Landroid/view/View;

    .line 1741
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_notification_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$902(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1742
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_notification_count:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$602(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1746
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1751
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_notif_black_24dp_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1752
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1753
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isContainerShowingRootCollection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1758
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1760
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1762
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1795
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1796
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->refreshOptionsInternal()V

    .line 1797
    return-void
.end method

.method public refreshOptionItems()V
    .locals 0

    .prologue
    .line 1789
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 1790
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;->refreshOptionsInternal()V

    .line 1791
    return-void
.end method
