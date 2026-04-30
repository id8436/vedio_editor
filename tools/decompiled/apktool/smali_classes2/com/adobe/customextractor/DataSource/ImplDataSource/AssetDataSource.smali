.class public final Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;
.super Ljava/lang/Object;
.source "AssetDataSource.java"

# interfaces
.implements Lcom/adobe/customextractor/DataSource/UriDataSource;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lcom/adobe/customextractor/DataSource/TransferListener;

.field private opened:Z

.field private uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;-><init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/customextractor/DataSource/TransferListener;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 46
    iput-object p2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->uriString:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 117
    iget-boolean v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->opened:Z

    if-eqz v0, :cond_0

    .line 118
    iput-boolean v3, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->opened:Z

    .line 119
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferEnd()V

    .line 125
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 117
    iget-boolean v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 118
    iput-boolean v3, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->opened:Z

    .line 119
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v1}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferEnd()V

    .line 123
    :cond_1
    throw v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public open(Lcom/adobe/customextractor/DataSource/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 52
    :try_start_0
    iget-object v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->uriString:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->uriString:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 61
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    invoke-virtual {v0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 62
    iget-wide v4, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->position:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkState(Z)V

    .line 63
    iget-wide v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    :goto_2
    iput-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    .line 65
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

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
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 56
    :cond_1
    :try_start_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 63
    :cond_3
    iget-wide v0, p1, Lcom/adobe/customextractor/DataSource/DataSpec;->length:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 72
    :cond_4
    iput-boolean v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->opened:Z

    .line 73
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onTransferStart()V

    .line 76
    :cond_5
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 82
    const/4 v0, -0x1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    if-lez v0, :cond_0

    .line 92
    iget-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->bytesRemaining:J

    .line 93
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource;->listener:Lcom/adobe/customextractor/DataSource/TransferListener;

    invoke-interface {v1, v0}, Lcom/adobe/customextractor/DataSource/TransferListener;->onBytesTransferred(I)V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;

    invoke-direct {v1, v0}, Lcom/adobe/customextractor/DataSource/ImplDataSource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
