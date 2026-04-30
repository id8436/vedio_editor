.class Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;
.super Lcom/i/a/b/f/c;
.source "BehanceSDKProjectDetailFragment.java"


# instance fields
.field firstAttempt:Z

.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V
    .locals 1

    .prologue
    .line 637
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-direct {p0}, Lcom/i/a/b/f/c;-><init>()V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->firstAttempt:Z

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->firstAttempt:Z

    if-eqz v0, :cond_0

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->firstAttempt:Z

    .line 669
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1300(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)V

    .line 673
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 647
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$1200(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$id;->bsdk_projectDetailsBackgroundImageContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 648
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-static {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->access$600(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 650
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move v1, v2

    .line 652
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 653
    add-int/lit16 v3, v1, 0x3e8

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    .line 654
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {p3, v2, v1, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 655
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment$5;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;

    invoke-virtual {v7}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 656
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v3

    mul-double/2addr v8, v10

    int-to-double v10, v4

    mul-double/2addr v8, v10

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v10, v3

    div-double/2addr v8, v10

    double-to-int v3, v8

    invoke-direct {v7, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 657
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 659
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 660
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 653
    :cond_0
    const/16 v3, 0x3e8

    goto :goto_1

    .line 662
    :cond_1
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/i/a/b/a/b;)V
    .locals 0

    .prologue
    .line 643
    return-void
.end method
