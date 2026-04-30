.class Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "StandardHttpRequestor.java"


# instance fields
.field private conn:Ljava/net/HttpURLConnection;

.field private final out:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/dropbox/core/http/StandardHttpRequestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->this$0:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    .line 133
    invoke-static {p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->access$000(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->out:Ljava/io/OutputStream;

    .line 135
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 136
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t abort().  Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    .line 152
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t finish().  Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->this$0:Lcom/dropbox/core/http/StandardHttpRequestor;

    iget-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    invoke-static {v0, v1}, Lcom/dropbox/core/http/StandardHttpRequestor;->access$100(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 180
    iput-object v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    .line 178
    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->conn:Ljava/net/HttpURLConnection;

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;->out:Ljava/io/OutputStream;

    return-object v0
.end method
