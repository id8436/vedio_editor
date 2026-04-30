.class public Lcom/twitter/sdk/android/core/internal/aa;
.super Ljava/lang/Object;
.source "TwitterSessionVerifier.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/x",
        "<",
        "Lcom/twitter/sdk/android/core/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/ab;

.field private final b:Lcom/twitter/sdk/android/core/internal/scribe/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/twitter/sdk/android/core/internal/ab;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/ab;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/aa;->a:Lcom/twitter/sdk/android/core/internal/ab;

    .line 41
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/an;->a()Lcom/twitter/sdk/android/core/internal/scribe/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/aa;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    .line 42
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/aa;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/f;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/f;-><init>()V

    const-string/jumbo v1, "android"

    .line 71
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, "credentials"

    .line 72
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 73
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 74
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->d(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 75
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->e(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    const-string/jumbo v1, "impression"

    .line 76
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/f;->f(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/f;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/scribe/f;->a()Lcom/twitter/sdk/android/core/internal/scribe/e;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/aa;->b:Lcom/twitter/sdk/android/core/internal/scribe/a;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twitter/sdk/android/core/internal/scribe/e;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/a;->a([Lcom/twitter/sdk/android/core/internal/scribe/e;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/aj;)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/aa;->a:Lcom/twitter/sdk/android/core/internal/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/ab;->a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/aa;->a()V

    .line 59
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lf/g;

    move-result-object v0

    invoke-interface {v0}, Lf/g;->a()Lf/av;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/twitter/sdk/android/core/t;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/aa;->a(Lcom/twitter/sdk/android/core/aj;)V

    return-void
.end method
