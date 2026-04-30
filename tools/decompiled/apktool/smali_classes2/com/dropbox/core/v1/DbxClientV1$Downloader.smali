.class public final Lcom/dropbox/core/v1/DbxClientV1$Downloader;
.super Ljava/lang/Object;
.source "DbxClientV1.java"


# instance fields
.field public final body:Ljava/io/InputStream;

.field public final metadata:Lcom/dropbox/core/v1/DbxEntry$File;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v1/DbxEntry$File;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->metadata:Lcom/dropbox/core/v1/DbxEntry$File;

    .line 534
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->body:Ljava/io/InputStream;

    .line 535
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->body:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    .line 564
    return-void
.end method

.method copyBodyAndClose(Ljava/io/OutputStream;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->body:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->close()V

    .line 558
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->metadata:Lcom/dropbox/core/v1/DbxEntry$File;

    return-object v0

    .line 547
    :catch_0
    move-exception v0

    .line 549
    :try_start_1
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$ReadException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$Downloader;->close()V

    throw v0

    .line 551
    :catch_1
    move-exception v0

    .line 553
    :try_start_2
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$WriteException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
