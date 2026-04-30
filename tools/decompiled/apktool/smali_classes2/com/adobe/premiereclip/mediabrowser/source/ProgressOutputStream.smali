.class Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;
.super Ljava/io/OutputStream;
.source "DropboxSource.java"


# instance fields
.field completed:J

.field listener:Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;

.field totalSize:J

.field underlying:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(JLjava/io/OutputStream;Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;)V
    .locals 3

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 326
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    .line 327
    iput-object p4, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->listener:Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;

    .line 328
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->completed:J

    .line 329
    iput-wide p1, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->totalSize:J

    .line 330
    return-void
.end method

.method private track(I)V
    .locals 6

    .prologue
    .line 355
    iget-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->completed:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->completed:J

    .line 356
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->listener:Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;

    iget-wide v2, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->completed:J

    iget-wide v4, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->totalSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream$Listener;->progress(JJ)V

    .line 357
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->track(I)V

    .line 352
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 341
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->track(I)V

    .line 342
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 335
    invoke-direct {p0, p3}, Lcom/adobe/premiereclip/mediabrowser/source/ProgressOutputStream;->track(I)V

    .line 336
    return-void
.end method
