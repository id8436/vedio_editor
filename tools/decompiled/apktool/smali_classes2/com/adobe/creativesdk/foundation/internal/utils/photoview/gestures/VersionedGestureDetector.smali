.class public final Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/OnGestureListener;)Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;
    .locals 2

    .prologue
    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/CupcakeGestureDetector;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    .line 36
    :goto_0
    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/GestureDetector;->setOnGestureListener(Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/OnGestureListener;)V

    .line 38
    return-object v0

    .line 30
    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 31
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/EclairGestureDetector;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
