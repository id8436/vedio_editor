.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectCoverFragment.java"

# interfaces
.implements Lcom/i/a/b/f/a;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 333
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Lcom/behance/sdk/edmodo/cropper/CropImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$900(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Lcom/behance/sdk/edmodo/cropper/CropImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$1000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$color;->bsdk_add_project_cover_image_fragment_inprogress_state_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 338
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->enableActionBarRightNav()V

    .line 339
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/i/a/b/a/b;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Lcom/behance/sdk/edmodo/cropper/CropImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/behance/sdk/edmodo/cropper/CropImageView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$2;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$800(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    return-void
.end method
