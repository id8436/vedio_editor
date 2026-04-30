.class Lcom/facebook/imagepipeline/k/bo;
.super Ljava/lang/Object;
.source "MediaVariationsIndexDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/imagepipeline/h/d;

.field final synthetic c:Lcom/facebook/c/a/f;

.field final synthetic d:Lcom/facebook/imagepipeline/k/bm;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bm;Ljava/lang/String;Lcom/facebook/imagepipeline/h/d;Lcom/facebook/c/a/f;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bo;->d:Lcom/facebook/imagepipeline/k/bm;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bo;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bo;->b:Lcom/facebook/imagepipeline/h/d;

    iput-object p4, p0, Lcom/facebook/imagepipeline/k/bo;->c:Lcom/facebook/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bo;->d:Lcom/facebook/imagepipeline/k/bm;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/bm;->a(Lcom/facebook/imagepipeline/k/bm;)Lcom/facebook/imagepipeline/k/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/bq;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    const-string/jumbo v2, "media_id"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bo;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bo;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/h/d;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string/jumbo v2, "height"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bo;->b:Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/h/d;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string/jumbo v2, "cache_key"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bo;->c:Lcom/facebook/c/a/f;

    invoke-interface {v3}, Lcom/facebook/c/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "resource_id"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bo;->c:Lcom/facebook/c/a/f;

    .line 143
    invoke-static {v3}, Lcom/facebook/c/a/g;->b(Lcom/facebook/c/a/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "media_variations_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 147
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_1
    invoke-static {}, Lcom/facebook/imagepipeline/k/bm;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error writing for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/imagepipeline/k/bo;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/d/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
