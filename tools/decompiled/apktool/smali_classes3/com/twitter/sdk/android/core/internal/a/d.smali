.class public Lcom/twitter/sdk/android/core/internal/a/d;
.super Ljava/lang/Object;
.source "OAuth1aInterceptor.java"

# interfaces
.implements Ld/al;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/t",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/t",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a/d;->a:Lcom/twitter/sdk/android/core/t;

    .line 48
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/a/d;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 49
    return-void
.end method


# virtual methods
.method a(Ld/ai;)Ld/ai;
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p1}, Ld/ai;->p()Ld/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/aj;->e(Ljava/lang/String;)Ld/aj;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Ld/ai;->m()I

    move-result v2

    .line 70
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Ld/ai;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/sdk/android/core/internal/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p1, v0}, Ld/ai;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v1, v3, v4}, Ld/aj;->b(Ljava/lang/String;Ljava/lang/String;)Ld/aj;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v1}, Ld/aj;->c()Ld/ai;

    move-result-object v0

    return-object v0
.end method

.method a(Ld/ax;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/b;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/b;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/a/d;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/a/d;->a:Lcom/twitter/sdk/android/core/t;

    .line 80
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/t;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ld/ax;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ld/ax;->a()Ld/ai;

    move-result-object v5

    invoke-virtual {v5}, Ld/ai;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/a/d;->b(Ld/ax;)Ljava/util/Map;

    move-result-object v6

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ld/ax;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ax;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string/jumbo v0, "POST"

    invoke-virtual {p1}, Ld/ax;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Ld/ax;->d()Ld/az;

    move-result-object v0

    .line 88
    instance-of v1, v0, Ld/ad;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Ld/ad;

    .line 90
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ld/ad;->a()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Ld/ad;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Ld/ad;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v2
.end method

.method public intercept(Ld/am;)Ld/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Ld/am;->a()Ld/ax;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ld/ax;->e()Ld/ay;

    move-result-object v1

    .line 55
    invoke-virtual {v0}, Ld/ax;->a()Ld/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/a/d;->a(Ld/ai;)Ld/ai;

    move-result-object v0

    invoke-virtual {v1, v0}, Ld/ay;->a(Ld/ai;)Ld/ay;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ld/ax;->e()Ld/ay;

    move-result-object v1

    const-string/jumbo v2, "Authorization"

    .line 60
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/a/d;->a(Ld/ax;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ld/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ay;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ld/ay;->b()Ld/ax;

    move-result-object v0

    .line 63
    invoke-interface {p1, v0}, Ld/am;->a(Ld/ax;)Ld/bd;

    move-result-object v0

    return-object v0
.end method
