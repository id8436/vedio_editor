.class public Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;
.super Ljava/lang/Object;
.source "BannerViewUtil.java"


# instance fields
.field private bannerTitle:Landroid/widget/TextView;

.field private bannerView:Landroid/view/View;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->this$0:Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->bannerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->bannerView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public getBannerTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/BannerViewUtil$EditSummaryBanner;->bannerView:Landroid/view/View;

    return-object v0
.end method
