.class Lcom/twitter/sdk/android/core/ak;
.super Ljava/lang/Object;
.source "TwitterSession.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/b/e",
        "<",
        "Lcom/twitter/sdk/android/core/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/ak;->a:Lcom/google/gson/Gson;

    .line 81
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/aj;
    .locals 3

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/ak;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/aj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/sdk/android/core/aj;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/aj;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/ak;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    check-cast p1, Lcom/twitter/sdk/android/core/aj;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/ak;->a(Lcom/twitter/sdk/android/core/aj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/ak;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/aj;

    move-result-object v0

    return-object v0
.end method
