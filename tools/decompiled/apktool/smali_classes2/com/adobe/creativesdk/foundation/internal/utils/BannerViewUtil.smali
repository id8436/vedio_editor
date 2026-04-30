.class public Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;
.super Ljava/lang/Object;
.source "BannerViewUtil.java"


# instance fields
.field private _editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

.field private host:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->host:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public createEditSummaryView()Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 29
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    .line 60
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->host:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->host:Landroid/app/Activity;

    .line 34
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_theme_actionbar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 39
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->host:Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    :goto_1
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextColor(I)V

    .line 51
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextSize(IF)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;-><init>(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->access$002(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->access$102(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;Landroid/view/View;)Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->access$100(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;->_editSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;

    goto :goto_0

    .line 45
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method
