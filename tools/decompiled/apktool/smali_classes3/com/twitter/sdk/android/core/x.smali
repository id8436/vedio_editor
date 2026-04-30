.class public Lcom/twitter/sdk/android/core/x;
.super Lcom/twitter/sdk/android/core/ah;
.source "TwitterApiException.java"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/a/a;

.field private final b:Lcom/twitter/sdk/android/core/ai;

.field private final c:I

.field private final d:Lf/av;


# direct methods
.method public constructor <init>(Lf/av;)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1}, Lcom/twitter/sdk/android/core/x;->b(Lf/av;)Lcom/twitter/sdk/android/core/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/core/x;->a(Lf/av;)Lcom/twitter/sdk/android/core/ai;

    move-result-object v1

    invoke-virtual {p1}, Lf/av;->a()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/sdk/android/core/x;-><init>(Lf/av;Lcom/twitter/sdk/android/core/a/a;Lcom/twitter/sdk/android/core/ai;I)V

    .line 44
    return-void
.end method

.method constructor <init>(Lf/av;Lcom/twitter/sdk/android/core/a/a;Lcom/twitter/sdk/android/core/ai;I)V
    .locals 1

    .prologue
    .line 48
    invoke-static {p4}, Lcom/twitter/sdk/android/core/x;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/ah;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/twitter/sdk/android/core/x;->a:Lcom/twitter/sdk/android/core/a/a;

    .line 50
    iput-object p3, p0, Lcom/twitter/sdk/android/core/x;->b:Lcom/twitter/sdk/android/core/ai;

    .line 51
    iput p4, p0, Lcom/twitter/sdk/android/core/x;->c:I

    .line 52
    iput-object p1, p0, Lcom/twitter/sdk/android/core/x;->d:Lf/av;

    .line 53
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a/a;
    .locals 5

    .prologue
    .line 105
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/a/k;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/k;-><init>()V

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/a/m;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/m;-><init>()V

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 110
    :try_start_0
    const-class v1, Lcom/twitter/sdk/android/core/a/b;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a/b;

    .line 111
    iget-object v1, v0, Lcom/twitter/sdk/android/core/a/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v0, v0, Lcom/twitter/sdk/android/core/a/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a/a;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lf/av;)Lcom/twitter/sdk/android/core/ai;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/twitter/sdk/android/core/ai;

    invoke-virtual {p0}, Lf/av;->b()Ld/ag;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/ai;-><init>(Ld/ag;)V

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HTTP request failed, Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lf/av;)Lcom/twitter/sdk/android/core/a/a;
    .locals 4

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lf/av;->e()Ld/bf;

    move-result-object v0

    invoke-virtual {v0}, Ld/bf;->d()Le/j;

    move-result-object v0

    invoke-interface {v0}, Le/j;->c()Le/f;

    move-result-object v0

    invoke-virtual {v0}, Le/f;->t()Le/f;

    move-result-object v0

    invoke-virtual {v0}, Le/f;->p()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {v0}, Lcom/twitter/sdk/android/core/x;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Unexpected response"

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/sdk/android/core/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
