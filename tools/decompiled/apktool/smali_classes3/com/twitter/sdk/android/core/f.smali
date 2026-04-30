.class public Lcom/twitter/sdk/android/core/f;
.super Ljava/lang/Object;
.source "GuestSession.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/b/e",
        "<",
        "Lcom/twitter/sdk/android/core/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    new-instance v2, Lcom/twitter/sdk/android/core/b;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/f;->a:Lcom/google/gson/Gson;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/e;
    .locals 5

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f;->a:Lcom/google/gson/Gson;

    const-class v1, Lcom/twitter/sdk/android/core/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to deserialize session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-interface {v1, v2, v0}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/sdk/android/core/e;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/e;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/f;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to serialize session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-interface {v1, v2, v0}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/twitter/sdk/android/core/e;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    return-object v0
.end method
