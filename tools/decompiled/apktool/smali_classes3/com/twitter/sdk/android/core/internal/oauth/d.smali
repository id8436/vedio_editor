.class Lcom/twitter/sdk/android/core/internal/oauth/d;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuth1aService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Ld/bf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/c;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/c;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 192
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Ld/bf;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Ld/bf;

    .line 165
    invoke-virtual {v0}, Ld/bf;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 173
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v2, Lcom/twitter/sdk/android/core/z;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/twitter/sdk/android/core/z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    .line 187
    :goto_2
    return-void

    .line 172
    :cond_1
    if-eqz v1, :cond_2

    .line 173
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 176
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    move-result-object v1

    .line 178
    if-nez v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v2, Lcom/twitter/sdk/android/core/z;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse auth response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/c;->failure(Lcom/twitter/sdk/android/core/ah;)V

    goto :goto_2

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v2, Lcom/twitter/sdk/android/core/s;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/Object;Lf/av;)V

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/c;->success(Lcom/twitter/sdk/android/core/s;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 172
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
