.class public Lcom/facebook/imagepipeline/k/bm;
.super Ljava/lang/Object;
.source "MediaVariationsIndexDatabase.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/bl;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/facebook/imagepipeline/k/bq;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/facebook/imagepipeline/k/bm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/k/bm;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "cache_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/imagepipeline/k/bm;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/facebook/imagepipeline/k/bq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/k/bq;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/k/bn;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/bm;->c:Lcom/facebook/imagepipeline/k/bq;

    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bm;->d:Ljava/util/concurrent/Executor;

    .line 58
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bm;->e:Ljava/util/concurrent/Executor;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bm;)Lcom/facebook/imagepipeline/k/bq;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bm;->c:Lcom/facebook/imagepipeline/k/bq;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/imagepipeline/k/bm;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bm;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/bm;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bm;->c:Lcom/facebook/imagepipeline/k/bq;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/bq;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 82
    :try_start_1
    const-string/jumbo v3, "media_id = ?"

    .line 83
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 85
    const-string/jumbo v1, "media_variations_index"

    sget-object v2, Lcom/facebook/imagepipeline/k/bm;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 94
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v1

    if-nez v1, :cond_1

    .line 118
    if-eqz v2, :cond_0

    .line 119
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v8

    .line 113
    :goto_0
    monitor-exit p0

    return-object v0

    .line 98
    :cond_1
    :try_start_4
    const-string/jumbo v1, "cache_key"

    .line 99
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 100
    const-string/jumbo v1, "width"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 101
    const-string/jumbo v1, "height"

    .line 102
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    new-instance v6, Lcom/facebook/imagepipeline/l/g;

    .line 107
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 108
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 109
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/facebook/imagepipeline/l/g;-><init>(Landroid/net/Uri;II)V

    .line 106
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    move-object v8, v2

    .line 115
    :goto_2
    :try_start_5
    sget-object v2, Lcom/facebook/imagepipeline/k/bm;->a:Ljava/lang/String;

    const-string/jumbo v3, "Error reading for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/d/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :catchall_0
    move-exception v1

    move-object v2, v8

    :goto_3
    if-eqz v2, :cond_2

    .line 119
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_3
    if-eqz v2, :cond_4

    .line 119
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 118
    :catchall_2
    move-exception v1

    move-object v2, v8

    goto :goto_3

    :catchall_3
    move-exception v1

    goto :goto_3

    .line 114
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/l",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/k/bn;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/bn;-><init>(Lcom/facebook/imagepipeline/k/bm;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bm;->d:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, La/l;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/facebook/imagepipeline/k/bm;->a:Ljava/lang/String;

    const-string/jumbo v2, "Failed to schedule query task for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/d/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {v0}, La/l;->a(Ljava/lang/Exception;)La/l;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/facebook/c/a/f;Lcom/facebook/imagepipeline/h/d;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bm;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/imagepipeline/k/bo;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/facebook/imagepipeline/k/bo;-><init>(Lcom/facebook/imagepipeline/k/bm;Ljava/lang/String;Lcom/facebook/imagepipeline/h/d;Lcom/facebook/c/a/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method
