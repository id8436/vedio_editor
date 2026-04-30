.class public Lcom/adobe/creativesdk/foundation/internal/utils/photoview/scrollerproxy/IcsScroller;
.super Lcom/adobe/creativesdk/foundation/internal/utils/photoview/scrollerproxy/GingerScroller;
.source "IcsScroller.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/scrollerproxy/IcsScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
