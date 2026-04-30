.class public abstract Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VersionedGestureDetector"


# instance fields
.field mListener:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;)Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;

    invoke-direct {v0, p0}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$CupcakeDetector;-><init>(Landroid/content/Context;)V

    .line 45
    :goto_0
    iput-object p1, v0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector;->mListener:Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$OnGestureListener;

    .line 47
    return-object v0

    .line 39
    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 40
    new-instance v0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$EclairDetector;

    invoke-direct {v0, p0}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$EclairDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$FroyoDetector;

    invoke-direct {v0, p0}, Lcom/behance/sdk/senab/photoview/VersionedGestureDetector$FroyoDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract isScaling()Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method
