.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;
.super Ljava/lang/Object;
.source "AdobeAssetOneUpSinglePageCellView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->_oneUpViewContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->cellViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeOneUpCellViewController;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeOneUpCellViewController;->getController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewerController;->getAssetAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-result-object v0

    .line 44
    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    .line 45
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->canStreamVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->_oneUpViewContext:Landroid/content/Context;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetVideoActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v2, "current_asset_name"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v2, "current_asset_guid"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v0, "current_asset_position"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "one_up_controller_code"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->getOneUpControllerCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->_oneUpViewContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getSharedServices()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    move-result-object v1

    const-string/jumbo v2, "ccv"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->isEntitledToService(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_error_not_entitled_to_video:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->handleNoPreviewWithMsg(I)V

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->_oneUpViewContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, ""

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_one_up_view_video_alert_message:I

    .line 60
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_asset_one_up_view_video_alert_button:I

    .line 62
    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetOneUpSinglePageCellView$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
