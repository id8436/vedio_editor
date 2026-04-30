.class Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SimpleDiskCache.java"


# instance fields
.field private final editor:Lcom/f/a/d;

.field private failed:Z

.field final synthetic this$0:Lcom/adobe/premiereclip/util/SimpleDiskCache;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/util/SimpleDiskCache;Ljava/io/OutputStream;Lcom/f/a/d;)V
    .locals 1

    .prologue
    .line 248
    iput-object p1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->this$0:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    .line 249
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 250
    iput-object p3, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->editor:Lcom/f/a/d;

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/util/SimpleDiskCache;Ljava/io/OutputStream;Lcom/f/a/d;Lcom/adobe/premiereclip/util/SimpleDiskCache$1;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;-><init>(Lcom/adobe/premiereclip/util/SimpleDiskCache;Ljava/io/OutputStream;Lcom/f/a/d;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 257
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iget-boolean v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->failed:Z

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->editor:Lcom/f/a/d;

    invoke-virtual {v1}, Lcom/f/a/d;->b()V

    .line 268
    :goto_1
    if-eqz v0, :cond_1

    throw v0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->editor:Lcom/f/a/d;

    invoke-virtual {v1}, Lcom/f/a/d;->a()V

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0

    .line 269
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 277
    throw v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 287
    throw v0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 297
    throw v0
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/premiereclip/util/SimpleDiskCache$CacheOutputStream;->failed:Z

    .line 307
    throw v0
.end method
