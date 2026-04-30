.class public abstract Lcom/facebook/d/h/a;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/d/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/facebook/d/h/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/i",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Lcom/facebook/d/h/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile g:Z


# instance fields
.field protected a:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected final c:Lcom/facebook/d/h/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/h/j",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/facebook/d/h/a;

    sput-object v0, Lcom/facebook/d/h/a;->d:Ljava/lang/Class;

    .line 71
    new-instance v0, Lcom/facebook/d/h/b;

    invoke-direct {v0}, Lcom/facebook/d/h/b;-><init>()V

    sput-object v0, Lcom/facebook/d/h/a;->e:Lcom/facebook/d/h/i;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/d/h/a;->g:Z

    return-void
.end method

.method private constructor <init>(Lcom/facebook/d/h/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/d/h/a;->b:Z

    .line 98
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/h/j;

    iput-object v0, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    .line 99
    invoke-virtual {p1}, Lcom/facebook/d/h/j;->c()V

    .line 100
    invoke-static {}, Lcom/facebook/d/h/a;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/d/h/a;->a:Ljava/lang/Throwable;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/d/h/j;Lcom/facebook/d/h/b;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/facebook/d/h/a;-><init>(Lcom/facebook/d/h/j;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/d/h/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/d/h/i",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/d/h/a;->b:Z

    .line 105
    new-instance v0, Lcom/facebook/d/h/j;

    invoke-direct {v0, p1, p2}, Lcom/facebook/d/h/j;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/i;)V

    iput-object v0, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    .line 106
    invoke-static {}, Lcom/facebook/d/h/a;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/d/h/a;->a:Ljava/lang/Throwable;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/facebook/d/h/i;Lcom/facebook/d/h/b;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/facebook/d/h/a;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/i;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;
    .locals 1
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/d/h/a;->e:Lcom/facebook/d/h/i;

    invoke-static {p0, v0}, Lcom/facebook/d/h/a;->b(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/d/h/i",
            "<TT;>;)",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/d/h/a;->b(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/d/h/a;)Z
    .locals 1
    .param p0    # Lcom/facebook/d/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/d/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/facebook/d/h/a;)Lcom/facebook/d/h/a;
    .locals 1
    .param p0    # Lcom/facebook/d/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/d/h/a",
            "<TT;>;)",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 262
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/d/h/a;->c()Lcom/facebook/d/h/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Lcom/facebook/d/h/i;)Lcom/facebook/d/h/a;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/facebook/d/h/i",
            "<TT;>;)",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    sget-boolean v0, Lcom/facebook/d/h/a;->g:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/facebook/d/h/c;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/d/h/c;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/i;Lcom/facebook/d/h/b;)V

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/d/h/d;

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/d/h/d;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/i;Lcom/facebook/d/h/b;)V

    goto :goto_0
.end method

.method public static c(Lcom/facebook/d/h/a;)V
    .locals 0
    .param p0    # Lcom/facebook/d/h/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/facebook/d/h/a;->close()V

    .line 294
    :cond_0
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/facebook/d/h/a;->f:Lcom/facebook/d/h/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/d/h/a;->d:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic h()Lcom/facebook/d/h/g;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/d/h/a;->f:Lcom/facebook/d/h/g;

    return-object v0
.end method

.method private i()Lcom/facebook/d/h/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-boolean v0, Lcom/facebook/d/h/a;->g:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/facebook/d/h/c;

    iget-object v1, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    invoke-direct {v0, v1, v2}, Lcom/facebook/d/h/c;-><init>(Lcom/facebook/d/h/j;Lcom/facebook/d/h/b;)V

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/d/h/d;

    iget-object v1, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    invoke-direct {v0, v1, v2}, Lcom/facebook/d/h/d;-><init>(Lcom/facebook/d/h/j;Lcom/facebook/d/h/b;)V

    goto :goto_0
.end method

.method private static j()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/facebook/d/h/a;->f:Lcom/facebook/d/h/g;

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/d/h/a;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 172
    iget-object v0, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    invoke-virtual {v0}, Lcom/facebook/d/h/j;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/d/h/a;->a:Ljava/lang/Throwable;

    .line 227
    return-void
.end method

.method public declared-synchronized b()Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/d/h/a;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/d/h/a;->a:Ljava/lang/Throwable;

    .line 182
    invoke-virtual {p0}, Lcom/facebook/d/h/a;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/d/d/k;->b(Z)V

    .line 183
    invoke-direct {p0}, Lcom/facebook/d/h/a;->i()Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lcom/facebook/d/h/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/facebook/d/h/a;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/d/h/a;->a:Ljava/lang/Throwable;

    .line 188
    invoke-virtual {p0}, Lcom/facebook/d/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/facebook/d/h/a;->i()Lcom/facebook/d/h/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 191
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/facebook/d/h/a;->b()Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/d/h/a;->b:Z

    if-eqz v0, :cond_0

    .line 158
    monitor-exit p0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/d/h/a;->b:Z

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    invoke-virtual {v0}, Lcom/facebook/d/h/j;->d()V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/d/h/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()I
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/d/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/d/h/a;->c:Lcom/facebook/d/h/j;

    invoke-virtual {v0}, Lcom/facebook/d/h/j;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
