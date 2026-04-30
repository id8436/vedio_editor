.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectCoverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$002(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Lcom/behance/sdk/project/modules/CoverImage;)Lcom/behance/sdk/project/modules/CoverImage;

    .line 279
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    sget-object v2, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;->INPROGRESS:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    invoke-static {v1, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$102(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;)Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$CropMode;

    .line 280
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    iget-object v1, v1, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->actionBarForwardButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$string;->bsdk_addproject_project_cover_selection_right_nav_crop_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$200(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;I)V

    .line 283
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$400(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$300(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v2, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$500(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Landroid/view/View;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v1, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;Landroid/view/View;)V

    .line 288
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;

    invoke-static {v1, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;->access$302(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectCoverFragment;I)I

    .line 289
    return-void
.end method
