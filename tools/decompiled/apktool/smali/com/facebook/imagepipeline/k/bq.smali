.class Lcom/facebook/imagepipeline/k/bq;
.super Ljava/lang/Object;
.source "MediaVariationsIndexDatabase.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/facebook/imagepipeline/k/bp;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bq;->a:Landroid/content/Context;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/k/bn;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/bq;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bq;->b:Lcom/facebook/imagepipeline/k/bp;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/facebook/imagepipeline/k/bp;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/k/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/bq;->b:Lcom/facebook/imagepipeline/k/bp;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bq;->b:Lcom/facebook/imagepipeline/k/bp;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/bp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
