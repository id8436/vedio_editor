.class public Lcom/dropbox/core/DbxDownloader;
.super Ljava/lang/Object;
.source "DbxDownloader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final body:Ljava/io/InputStream;

.field private closed:Z

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dropbox/core/DbxDownloader;->result:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/dropbox/core/DbxDownloader;->body:Ljava/io/InputStream;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    .line 50
    return-void
.end method

.method private assertOpen()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This downloader is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->body:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/DbxDownloader;->closed:Z

    .line 134
    :cond_0
    return-void
.end method

.method public download(Ljava/io/OutputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$WriteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->close()V

    .line 120
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->result:Ljava/lang/Object;

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    :try_start_1
    invoke-virtual {v0}, Lcom/dropbox/core/util/IOUtil$WriteException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/dropbox/core/DbxDownloader;->close()V

    throw v0

    .line 113
    :catch_1
    move-exception v0

    .line 115
    :try_start_2
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/dropbox/core/DbxDownloader;->assertOpen()V

    .line 76
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->body:Ljava/io/InputStream;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/DbxDownloader;->result:Ljava/lang/Object;

    return-object v0
.end method
