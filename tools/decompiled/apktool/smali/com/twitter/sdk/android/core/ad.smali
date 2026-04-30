.class public Lcom/twitter/sdk/android/core/ad;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/twitter/sdk/android/core/j;

.field private c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/ad;->a:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/ab;
    .locals 7

    .prologue
    .line 116
    new-instance v0, Lcom/twitter/sdk/android/core/ab;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/ad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/ad;->b:Lcom/twitter/sdk/android/core/j;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/ad;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/ad;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/ad;->e:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/ab;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/ac;)V

    return-object v0
.end method

.method public a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/ad;
    .locals 2

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TwitterAuthConfig must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/ad;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 87
    return-object p0
.end method

.method public a(Lcom/twitter/sdk/android/core/j;)Lcom/twitter/sdk/android/core/ad;
    .locals 2

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Logger must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/ad;->b:Lcom/twitter/sdk/android/core/j;

    .line 74
    return-object p0
.end method

.method public a(Z)Lcom/twitter/sdk/android/core/ad;
    .locals 1

    .prologue
    .line 107
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/ad;->e:Ljava/lang/Boolean;

    .line 109
    return-object p0
.end method
