.class Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectEditAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$itemPosition:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 108
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    invoke-static {v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$Callbacks;->onRotate(Lcom/behance/sdk/project/modules/ImageModule;)V

    .line 109
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v1, v1, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$image:Lcom/behance/sdk/project/modules/ImageModule;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v2, v2, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageViewDuplicate:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;->this$1:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;

    iget-object v0, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageViewDuplicate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
