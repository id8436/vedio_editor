.class Lcom/b/a/d/b/h;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/b/a/d/b/b;


# instance fields
.field private final a:Lcom/b/a/d/b/b/b;

.field private volatile b:Lcom/b/a/d/b/b/a;


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/b/b;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/b/a/d/b/h;->a:Lcom/b/a/d/b/b/b;

    .line 317
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/d/b/b/a;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/b/a/d/b/h;->b:Lcom/b/a/d/b/b/a;

    if-nez v0, :cond_2

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/b/a/d/b/h;->b:Lcom/b/a/d/b/b/a;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/b/a/d/b/h;->a:Lcom/b/a/d/b/b/b;

    invoke-interface {v0}, Lcom/b/a/d/b/b/b;->a()Lcom/b/a/d/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/h;->b:Lcom/b/a/d/b/b/a;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/b/a/d/b/h;->b:Lcom/b/a/d/b/b/a;

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Lcom/b/a/d/b/b/d;

    invoke-direct {v0}, Lcom/b/a/d/b/b/d;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/b/h;->b:Lcom/b/a/d/b/b/a;

    .line 329
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/b/a/d/b/h;->b:Lcom/b/a/d/b/b/a;

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
