.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AssetViewerViewPager.java"


# instance fields
.field private isLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    .line 36
    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    if-nez v1, :cond_0

    .line 42
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocked(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    .line 65
    return-void
.end method

.method public toggleLock()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewerViewPager;->isLocked:Z

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
