.class abstract Lcom/twitter/sdk/android/core/internal/oauth/i;
.super Ljava/lang/Object;
.source "OAuthService.java"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/af;

.field private final b:Lcom/twitter/sdk/android/core/internal/z;

.field private final c:Ljava/lang/String;

.field private final d:Lf/aw;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/af;Lcom/twitter/sdk/android/core/internal/z;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->a:Lcom/twitter/sdk/android/core/af;

    .line 47
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->b:Lcom/twitter/sdk/android/core/internal/z;

    .line 48
    const-string/jumbo v0, "TwitterAndroidSDK"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/af;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->c:Ljava/lang/String;

    .line 50
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/j;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/oauth/j;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/i;)V

    .line 51
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/a/e;->a()Ld/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/at;->a(Ld/j;)Ld/at;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    .line 63
    new-instance v1, Lf/ay;

    invoke-direct {v1}, Lf/ay;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/i;->d()Lcom/twitter/sdk/android/core/internal/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/ay;->a(Ljava/lang/String;)Lf/ay;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Lf/ay;->a(Ld/ar;)Lf/ay;

    move-result-object v0

    .line 66
    invoke-static {}, Lf/a/a/a;->a()Lf/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/ay;->a(Lf/l;)Lf/ay;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lf/ay;->a()Lf/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->d:Lf/aw;

    .line 68
    return-void
.end method


# virtual methods
.method protected c()Lcom/twitter/sdk/android/core/af;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->a:Lcom/twitter/sdk/android/core/af;

    return-object v0
.end method

.method protected d()Lcom/twitter/sdk/android/core/internal/z;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->b:Lcom/twitter/sdk/android/core/internal/z;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Lf/aw;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/i;->d:Lf/aw;

    return-object v0
.end method
