.class public Lcom/twitter/sdk/android/core/internal/a/e;
.super Ljava/lang/Object;
.source "OkHttpClientHelper.java"


# direct methods
.method public static a(Lcom/twitter/sdk/android/core/g;)Ld/ar;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    invoke-static {v0, p0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Ld/at;Lcom/twitter/sdk/android/core/g;)Ld/at;

    move-result-object v0

    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/t",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Ld/ar;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    new-instance v0, Ld/at;

    invoke-direct {v0}, Ld/at;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Ld/at;Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/at;

    move-result-object v0

    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ld/ar;Lcom/twitter/sdk/android/core/g;)Ld/ar;
    .locals 2

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HttpClient must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ld/ar;->y()Ld/at;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Ld/at;Lcom/twitter/sdk/android/core/g;)Ld/at;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static a(Ld/ar;Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/ar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ar;",
            "Lcom/twitter/sdk/android/core/t",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Ld/ar;"
        }
    .end annotation

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HttpClient must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Ld/ar;->y()Ld/at;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Ld/at;Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/at;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ld/at;->a()Ld/ar;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method static a(Ld/at;Lcom/twitter/sdk/android/core/g;)Ld/at;
    .locals 2

    .prologue
    .line 70
    .line 71
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/a/e;->a()Ld/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/at;->a(Ld/j;)Ld/at;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/c;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/internal/a/c;-><init>(Lcom/twitter/sdk/android/core/g;)V

    .line 72
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/b;)Ld/at;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/a;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/internal/a/a;-><init>(Lcom/twitter/sdk/android/core/g;)V

    .line 73
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/b;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/a/b;-><init>()V

    .line 74
    invoke-virtual {v0, v1}, Ld/at;->b(Ld/al;)Ld/at;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method static a(Ld/at;Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ld/at;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/at;",
            "Lcom/twitter/sdk/android/core/t",
            "<+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Ld/at;"
        }
    .end annotation

    .prologue
    .line 80
    .line 81
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/a/e;->a()Ld/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/at;->a(Ld/j;)Ld/at;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/a/d;

    invoke-direct {v1, p1, p2}, Lcom/twitter/sdk/android/core/internal/a/d;-><init>(Lcom/twitter/sdk/android/core/t;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    .line 82
    invoke-virtual {v0, v1}, Ld/at;->a(Ld/al;)Ld/at;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public static a()Ld/j;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Ld/k;

    invoke-direct {v0}, Ld/k;-><init>()V

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/I0PRSKJViZuUfUYaeX7ATP7RcLc="

    aput-object v3, v2, v4

    .line 87
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/VRmyeKyygdftp6vBg5nDu2kEJLU="

    aput-object v3, v2, v4

    .line 88
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/Eje6RRfurSkm/cHN/r7t8t7ZFFw="

    aput-object v3, v2, v4

    .line 89
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/Wr7Fddyu87COJxlD/H8lDD32YeM="

    aput-object v3, v2, v4

    .line 90
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/GiG0lStik84Ys2XsnA6TTLOB5tQ="

    aput-object v3, v2, v4

    .line 91
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/IvGeLsbqzPxdI0b0wuj2xVTdXgc="

    aput-object v3, v2, v4

    .line 92
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/7WYxNdMb1OymFMQp4xkGn5TBJlA="

    aput-object v3, v2, v4

    .line 93
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/sYEIGhmkwJQf+uiVKMEkyZs0rMc="

    aput-object v3, v2, v4

    .line 94
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/PANDaGiVHPNpKri0Jtq6j+ki5b0="

    aput-object v3, v2, v4

    .line 95
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/u8I+KQuzKHcdrT6iTb30I70GsD0="

    aput-object v3, v2, v4

    .line 96
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/wHqYaI2J+6sFZAwRfap9ZbjKzE4="

    aput-object v3, v2, v4

    .line 97
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/cTg28gIxU0crbrplRqkQFVggBQk="

    aput-object v3, v2, v4

    .line 98
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/sBmJ5+/7Sq/LFI9YRjl2IkFQ4bo="

    aput-object v3, v2, v4

    .line 99
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/vb6nG6txV/nkddlU0rcngBqCJoI="

    aput-object v3, v2, v4

    .line 100
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/nKmNAK90Dd2BgNITRaWLjy6UONY="

    aput-object v3, v2, v4

    .line 101
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/h+hbY1PGI6MSjLD/u/VR/lmADiI="

    aput-object v3, v2, v4

    .line 102
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/Xk9ThoXdT57KX9wNRW99UbHcm3s="

    aput-object v3, v2, v4

    .line 103
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/1S4TwavjSdrotJWU73w4Q2BkZr0="

    aput-object v3, v2, v4

    .line 104
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/gzF+YoVCU9bXeDGQ7JGQVumRueM="

    aput-object v3, v2, v4

    .line 105
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/aDMOYTWFIVkpg6PI0tLhQG56s8E="

    aput-object v3, v2, v4

    .line 106
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    const-string/jumbo v1, "*.twitter.com"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "sha1/Vv7zwhR9TtOIN/29MFI4cgHld40="

    aput-object v3, v2, v4

    .line 107
    invoke-virtual {v0, v1, v2}, Ld/k;->a(Ljava/lang/String;[Ljava/lang/String;)Ld/k;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ld/k;->a()Ld/j;

    move-result-object v0

    .line 86
    return-object v0
.end method
