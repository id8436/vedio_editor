.class public Lcom/facebook/imagepipeline/c/u;
.super Ljava/lang/Object;
.source "DefaultCacheKeyFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/c/k;


# static fields
.field private static a:Lcom/facebook/imagepipeline/c/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/c/u;->a:Lcom/facebook/imagepipeline/c/u;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/imagepipeline/c/u;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/facebook/imagepipeline/c/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/c/u;->a:Lcom/facebook/imagepipeline/c/u;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/facebook/imagepipeline/c/u;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/c/u;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/c/u;->a:Lcom/facebook/imagepipeline/c/u;

    .line 35
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/c/u;->a:Lcom/facebook/imagepipeline/c/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 89
    return-object p1
.end method

.method public a(Lcom/facebook/imagepipeline/l/a;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/c/a/f;
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/c/a/k;

    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/c/u;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/c/a/k;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 40
    new-instance v0, Lcom/facebook/imagepipeline/c/e;

    .line 41
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/c/u;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->g()Lcom/facebook/imagepipeline/d/e;

    move-result-object v3

    .line 44
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->h()Lcom/facebook/imagepipeline/d/a;

    move-result-object v4

    move-object v6, v5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/c/e;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/d/d;Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/d/a;Lcom/facebook/c/a/f;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->o()Lcom/facebook/imagepipeline/l/h;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/facebook/imagepipeline/l/h;->b()Lcom/facebook/c/a/f;

    move-result-object v5

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 62
    :goto_0
    new-instance v0, Lcom/facebook/imagepipeline/c/e;

    .line 63
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/c/u;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->g()Lcom/facebook/imagepipeline/d/e;

    move-result-object v3

    .line 66
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->h()Lcom/facebook/imagepipeline/d/a;

    move-result-object v4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/c/e;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/d/d;Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/d/a;Lcom/facebook/c/a/f;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-object v0

    :cond_0
    move-object v5, v6

    .line 60
    goto :goto_0
.end method

.method public c(Lcom/facebook/imagepipeline/l/a;Ljava/lang/Object;)Lcom/facebook/c/a/f;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/imagepipeline/c/u;->a(Lcom/facebook/imagepipeline/l/a;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v0

    return-object v0
.end method
