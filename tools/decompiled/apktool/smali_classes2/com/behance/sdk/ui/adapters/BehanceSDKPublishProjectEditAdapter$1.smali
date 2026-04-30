.class Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$image:Lcom/behance/sdk/project/modules/ImageModule;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$imageViewDuplicate:Landroid/widget/ImageView;

.field final synthetic val$itemPosition:I

.field final synthetic val$rotateImage:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Lcom/behance/sdk/project/modules/ImageModule;Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$rotateImage:Landroid/view/View;

    iput-object p4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageViewDuplicate:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$image:Lcom/behance/sdk/project/modules/ImageModule;

    iput-object p6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageView:Landroid/widget/ImageView;

    iput p7, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$itemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$rotateImage:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageViewDuplicate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$image:Lcom/behance/sdk/project/modules/ImageModule;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/behance/sdk/project/modules/ImageModule;->getThumbNail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageViewDuplicate:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/behance/sdk/R$anim;->bsdk_thumbail_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKPublishProjectEditAdapter$1;->val$imageViewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    return-void
.end method
