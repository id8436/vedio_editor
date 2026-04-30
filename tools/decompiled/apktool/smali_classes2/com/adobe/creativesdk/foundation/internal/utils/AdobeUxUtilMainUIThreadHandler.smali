.class public Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;
.super Ljava/lang/Object;
.source "AdobeUxUtilMainUIThreadHandler.java"


# static fields
.field private static mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    .line 35
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->mUIThreadHandler:Landroid/os/Handler;

    .line 29
    :cond_0
    return-void
.end method
