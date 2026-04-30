.class public Lcom/twitter/sdk/android/core/internal/b/a;
.super Ljava/lang/Object;
.source "FileStoreImpl.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/b/a;->a:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/b/a;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 85
    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object p1

    .line 89
    :cond_1
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Couldn\'t create file"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    const-string/jumbo v1, "Twitter"

    const-string/jumbo v2, "Null File"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
