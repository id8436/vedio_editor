.class public Lcom/facebook/c/b/x;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/c/b/p;


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lcom/facebook/c/b/y;

.field private final c:I

.field private final d:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lcom/facebook/c/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/facebook/c/b/x;

    sput-object v0, Lcom/facebook/c/b/x;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/a/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/facebook/c/b/x;->c:I

    .line 60
    iput-object p4, p0, Lcom/facebook/c/b/x;->f:Lcom/facebook/c/a/a;

    .line 61
    iput-object p2, p0, Lcom/facebook/c/b/x;->d:Lcom/facebook/d/d/m;

    .line 62
    iput-object p3, p0, Lcom/facebook/c/b/x;->e:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/facebook/c/b/y;

    invoke-direct {v0, v1, v1}, Lcom/facebook/c/b/y;-><init>(Ljava/io/File;Lcom/facebook/c/b/p;)V

    iput-object v0, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    .line 64
    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    .line 167
    iget-object v1, v0, Lcom/facebook/c/b/y;->a:Lcom/facebook/c/b/p;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/facebook/c/b/y;->b:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/facebook/c/b/y;->b:Ljava/io/File;

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/c/b/x;->d:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/c/b/x;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/facebook/c/b/x;->a(Ljava/io/File;)V

    .line 184
    new-instance v0, Lcom/facebook/c/b/a;

    iget v2, p0, Lcom/facebook/c/b/x;->c:I

    iget-object v3, p0, Lcom/facebook/c/b/x;->f:Lcom/facebook/c/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/c/b/a;-><init>(Ljava/io/File;ILcom/facebook/c/a/a;)V

    .line 185
    new-instance v2, Lcom/facebook/c/b/y;

    invoke-direct {v2, v1, v0}, Lcom/facebook/c/b/y;-><init>(Ljava/io/File;Lcom/facebook/c/b/p;)V

    iput-object v2, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    .line 186
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/c/b/q;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/c/b/p;->a(Lcom/facebook/c/b/q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/c/b/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/c/b/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/c/b/r;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-static {p1}, Lcom/facebook/d/c/c;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/d/c/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    sget-object v0, Lcom/facebook/c/b/x;->b:Ljava/lang/Class;

    const-string/jumbo v1, "Created cache directory %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    iget-object v1, p0, Lcom/facebook/c/b/x;->f:Lcom/facebook/c/a/a;

    sget-object v2, Lcom/facebook/c/a/b;->k:Lcom/facebook/c/a/b;

    sget-object v3, Lcom/facebook/c/b/x;->b:Ljava/lang/Class;

    const-string/jumbo v4, "createRootDirectoryIfNecessary"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/facebook/c/a/a;->a(Lcom/facebook/c/a/b;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/c/b/p;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 80
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/c/b/p;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/b/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/c/b/p;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/c/b/p;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 115
    sget-object v1, Lcom/facebook/c/b/x;->b:Ljava/lang/Class;

    const-string/jumbo v2, "purgeUnexpectedResources"

    invoke-static {v1, v2, v0}, Lcom/facebook/d/e/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method declared-synchronized d()Lcom/facebook/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/c/b/x;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->f()V

    .line 160
    invoke-direct {p0}, Lcom/facebook/c/b/x;->h()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    iget-object v0, v0, Lcom/facebook/c/b/y;->a:Lcom/facebook/c/b/p;

    invoke-static {v0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/c/b/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/facebook/c/b/x;->d()Lcom/facebook/c/b/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/c/b/p;->e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    iget-object v0, v0, Lcom/facebook/c/b/y;->a:Lcom/facebook/c/b/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    iget-object v0, v0, Lcom/facebook/c/b/y;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/facebook/c/b/x;->a:Lcom/facebook/c/b/y;

    iget-object v0, v0, Lcom/facebook/c/b/y;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/d/c/a;->b(Ljava/io/File;)Z

    .line 179
    :cond_0
    return-void
.end method
