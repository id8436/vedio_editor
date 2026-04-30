.class Lcom/behance/sdk/project/modules/ImageModule$1;
.super Ljava/lang/Object;
.source "ImageModule.java"

# interfaces
.implements Lcom/i/a/b/f/a;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/project/modules/ImageModule;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/i/a/b/f/a;

.field final synthetic val$module:Lcom/behance/sdk/project/modules/ImageModule;


# direct methods
.method constructor <init>(Lcom/behance/sdk/project/modules/ImageModule;Lcom/i/a/b/f/a;Lcom/behance/sdk/project/modules/ImageModule;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->this$0:Lcom/behance/sdk/project/modules/ImageModule;

    iput-object p2, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    iput-object p3, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$module:Lcom/behance/sdk/project/modules/ImageModule;

    iput-object p4, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    invoke-interface {v0, p1, p2}, Lcom/i/a/b/f/a;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->this$0:Lcom/behance/sdk/project/modules/ImageModule;

    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$module:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-static {p3, v1}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->updateBitmapForRotation(Landroid/graphics/Bitmap;Lcom/behance/sdk/project/modules/ImageModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/behance/sdk/project/modules/ImageModule;->access$002(Lcom/behance/sdk/project/modules/ImageModule;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 381
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->this$0:Lcom/behance/sdk/project/modules/ImageModule;

    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p3}, Lcom/behance/sdk/project/modules/ImageModule;->access$100(Lcom/behance/sdk/project/modules/ImageModule;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 382
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->this$0:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-static {v1}, Lcom/behance/sdk/project/modules/ImageModule;->access$000(Lcom/behance/sdk/project/modules/ImageModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    iget-object v1, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->this$0:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-static {v1}, Lcom/behance/sdk/project/modules/ImageModule;->access$000(Lcom/behance/sdk/project/modules/ImageModule;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/i/a/b/f/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 385
    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/i/a/b/a/b;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/i/a/b/f/a;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/i/a/b/a/b;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/behance/sdk/project/modules/ImageModule$1;->val$listener:Lcom/i/a/b/f/a;

    invoke-interface {v0, p1, p2}, Lcom/i/a/b/f/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 370
    :cond_0
    return-void
.end method
