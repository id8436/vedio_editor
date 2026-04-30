.class public Lcom/twitter/sdk/android/core/internal/a/c;
.super Ljava/lang/Object;
.source "GuestAuthenticator.java"

# interfaces
.implements Ld/b;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/g;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/g;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/c;->a:Lcom/twitter/sdk/android/core/g;

    .line 42
    return-void
.end method


# virtual methods
.method a(Ld/ax;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Ld/ax;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p1}, Ld/ax;->e()Ld/ay;

    move-result-object v0

    .line 78
    invoke-static {v0, p2}, Lcom/twitter/sdk/android/core/internal/a/a;->a(Ld/ay;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 79
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    return-object v0
.end method

.method a(Ld/bd;)Ld/ax;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/c;->c(Ld/bd;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/a/c;->a:Lcom/twitter/sdk/android/core/g;

    .line 52
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/c;->b(Ld/bd;)Lcom/twitter/sdk/android/core/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/g;->a(Lcom/twitter/sdk/android/core/e;)Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    move-object v0, v1

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p1}, Ld/bd;->a()Ld/ax;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/sdk/android/core/internal/a/c;->a(Ld/ax;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Ld/ax;

    move-result-object v0

    .line 59
    :goto_1
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/e;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_1
.end method

.method public a(Ld/bi;Ld/bd;)Ld/ax;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/core/internal/a/c;->a(Ld/bd;)Ld/ax;

    move-result-object v0

    return-object v0
.end method

.method b(Ld/bd;)Lcom/twitter/sdk/android/core/e;
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p1}, Ld/bd;->a()Ld/ax;

    move-result-object v0

    invoke-virtual {v0}, Ld/ax;->c()Ld/ag;

    move-result-object v0

    .line 64
    const-string/jumbo v1, "Authorization"

    invoke-virtual {v0, v1}, Ld/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "x-guest-token"

    invoke-virtual {v0, v2}, Ld/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 68
    new-instance v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    const-string/jumbo v3, "bearer"

    const-string/jumbo v4, "bearer "

    const-string/jumbo v5, ""

    .line 69
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/twitter/sdk/android/core/e;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ld/bd;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 83
    move v0, v1

    .line 84
    :goto_0
    invoke-virtual {p1}, Ld/bd;->h()Ld/bd;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
