.class public final Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lcom/adobe/customextractor/DataSource/UriDataSource;


# instance fields
.field private bytesRemaining:J

.field private file:Ljava/io/RandomAccessFile;

.field private final listener:Lcom/adobe/customextractor/DataSource/TransferListener;

.field private opened:Z

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;-><init>(Lcom/adobe/customextractor/DataSource/TransferListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/adobe/customextractor/DataSource/TransferListener;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->uriString:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 105
    iget-boolean v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->opened:Z

    if-eqz v0, :cond_0

    .line 106
    iput-boolean v3, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->opened:Z

    .line 107
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferEnd()V

    .line 113
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_1
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 105
    iget-boolean v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 106
    iput-boolean v3, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->opened:Z

    .line 107
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferEnd()V

    .line 111
    :cond_1
    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/adobe/customextractor/DataSource/DataSpec;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->uriString:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    .line 49
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v2, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    iget-wide v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    .line 52
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 53
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 50
    :cond_0
    :try_start_1
    iget-wide v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->opened:Z

    .line 60
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferStart()V

    .line 64
    :cond_2
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 70
    const/4 v0, -0x1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 79
    if-lez v0, :cond_0

    .line 80
    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->bytesRemaining:J

    .line 81
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v1, v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/FileDataSource$FileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
