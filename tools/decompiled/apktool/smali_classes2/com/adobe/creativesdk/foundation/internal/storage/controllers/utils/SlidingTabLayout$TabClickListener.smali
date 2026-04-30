.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$1;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout$TabClickListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 384
    :cond_0
    return-void

    .line 378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
