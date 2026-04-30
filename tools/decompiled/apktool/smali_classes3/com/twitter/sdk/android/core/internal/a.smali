.class public Lcom/twitter/sdk/android/core/internal/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 54
    new-instance v1, Lcom/twitter/sdk/android/core/internal/b;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/internal/b;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/b;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/internal/d;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a;->a:Lcom/twitter/sdk/android/core/internal/b;

    .line 64
    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/b;->a(Lcom/twitter/sdk/android/core/internal/b;Lcom/twitter/sdk/android/core/internal/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
