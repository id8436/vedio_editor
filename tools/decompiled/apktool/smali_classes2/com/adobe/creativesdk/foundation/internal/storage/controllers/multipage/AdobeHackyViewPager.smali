.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/multipage/AdobeHackyViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AdobeHackyViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 26
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 32
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 32
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 46
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    :goto_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    goto :goto_1
.end method
