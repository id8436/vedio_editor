.class public final Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lcom/adobe/customextractor/DataSource/UriDataSource;


# instance fields
.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/adobe/customextractor/DataSource/TransferListener;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 52
    iput-object p2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 110
    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->uriString:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 118
    iget-boolean v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_0

    .line 119
    iput-boolean v3, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->opened:Z

    .line 120
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferEnd()V

    .line 126
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_1
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 118
    iget-boolean v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 119
    iput-boolean v3, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->opened:Z

    .line 120
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferEnd()V

    .line 124
    :cond_1
    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/adobe/customextractor/DataSource/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 58
    :try_start_0
    iget-object v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->uriString:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    const-string/jumbo v3, "r"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    .line 61
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 62
    iget-wide v4, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 63
    iget-wide v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    :goto_1
    iput-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    .line 65
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 66
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    :try_start_1
    iget-wide v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    :cond_2
    iput-boolean v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->opened:Z

    .line 73
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferStart()V

    .line 77
    :cond_3
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 83
    const/4 v0, -0x1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    if-lez v0, :cond_0

    .line 93
    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->bytesRemaining:J

    .line 94
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v1, v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
