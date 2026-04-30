.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 237
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->launchCreativeCloudAssetBrowser()V

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;

    .line 243
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKPublishProjectActivity;->requestPermission(I)V

    goto :goto_0
.end method
