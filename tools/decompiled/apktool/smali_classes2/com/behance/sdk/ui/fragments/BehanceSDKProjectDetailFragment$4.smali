.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;
.super Lcom/i/a/b/f/c;
.source "BehanceSDKProjectDetailFragment.java"


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-direct {p0}, Lcom/i/a/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 601
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    .line 619
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    double-to-int v3, v2

    .line 606
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v6, v2

    div-double/2addr v4, v6

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v2, v4

    invoke-static {v0, p3, v3, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 607
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    .line 608
    if-eqz v5, :cond_3

    .line 609
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1100(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getBgColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move v0, v1

    .line 610
    :goto_1
    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 611
    :goto_2
    iget-object v6, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v6}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getWidth()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 612
    int-to-float v6, v2

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 611
    add-int/2addr v2, v3

    goto :goto_2

    .line 610
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->bgImageHeight:I

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$4;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$700(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
