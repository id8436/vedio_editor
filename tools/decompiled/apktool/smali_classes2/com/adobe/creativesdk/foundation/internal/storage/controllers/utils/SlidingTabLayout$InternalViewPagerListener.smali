.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$1;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 352
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 332
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;II)V

    .line 344
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 340
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 361
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;II)V

    :cond_0
    move v0, v1

    .line 365
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 366
    goto :goto_1

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 371
    :cond_3
    return-void
.end method
