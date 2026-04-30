.class Lcom/facebook/d/h/f;
.super Ljava/lang/ref/PhantomReference;
.source "CloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/facebook/d/h/a;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/d/h/f;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Destructor.class"
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/d/h/j;

.field private c:Lcom/facebook/d/h/f;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Destructor.class"
    .end annotation
.end field

.field private d:Lcom/facebook/d/h/f;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Destructor.class"
    .end annotation
.end field

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/d/h/a;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/facebook/d/h/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 353
    iget-object v0, p1, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    iput-object v0, p0, Lcom/facebook/d/h/f;->b:Lcom/facebook/d/h/j;

    .line 355
    sget-object v0, Lcom/facebook/d/h/f;->a:Lcom/facebook/d/h/f;

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/facebook/d/h/f;->a:Lcom/facebook/d/h/f;

    iput-object p0, v0, Lcom/facebook/d/h/f;->c:Lcom/facebook/d/h/f;

    .line 357
    sget-object v0, Lcom/facebook/d/h/f;->a:Lcom/facebook/d/h/f;

    iput-object v0, p0, Lcom/facebook/d/h/f;->d:Lcom/facebook/d/h/f;

    .line 359
    :cond_0
    sput-object p0, Lcom/facebook/d/h/f;->a:Lcom/facebook/d/h/f;

    .line 360
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/d/h/f;->e:Z

    if-eqz v0, :cond_0

    .line 365
    monitor-exit p0

    .line 390
    :goto_0
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/d/h/f;->e:Z

    .line 368
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    const-class v1, Lcom/facebook/d/h/f;

    monitor-enter v1

    .line 371
    :try_start_1
    iget-object v0, p0, Lcom/facebook/d/h/f;->d:Lcom/facebook/d/h/f;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/facebook/d/h/f;->d:Lcom/facebook/d/h/f;

    iget-object v2, p0, Lcom/facebook/d/h/f;->c:Lcom/facebook/d/h/f;

    iput-object v2, v0, Lcom/facebook/d/h/f;->c:Lcom/facebook/d/h/f;

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/facebook/d/h/f;->c:Lcom/facebook/d/h/f;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/facebook/d/h/f;->c:Lcom/facebook/d/h/f;

    iget-object v2, p0, Lcom/facebook/d/h/f;->d:Lcom/facebook/d/h/f;

    iput-object v2, v0, Lcom/facebook/d/h/f;->d:Lcom/facebook/d/h/f;

    .line 379
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    if-nez p1, :cond_2

    .line 383
    invoke-static {}, Lcom/facebook/d/h/a;->g()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "GCed without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 385
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/facebook/d/h/f;->b:Lcom/facebook/d/h/j;

    .line 386
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/d/h/f;->b:Lcom/facebook/d/h/j;

    .line 387
    invoke-virtual {v4}, Lcom/facebook/d/h/j;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 382
    invoke-static {v0, v1, v2}, Lcom/facebook/d/e/a;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/facebook/d/h/f;->b:Lcom/facebook/d/h/j;

    invoke-virtual {v0}, Lcom/facebook/d/h/j;->d()V

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 377
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/d/h/f;->d:Lcom/facebook/d/h/f;

    sput-object v0, Lcom/facebook/d/h/f;->a:Lcom/facebook/d/h/f;

    goto :goto_1

    .line 379
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
