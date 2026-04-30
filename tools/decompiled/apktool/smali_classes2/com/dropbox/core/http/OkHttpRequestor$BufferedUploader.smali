.class Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "OkHttpRequestor.java"


# instance fields
.field private body:Lcom/squareup/okhttp/RequestBody;

.field private call:Lcom/squareup/okhttp/Call;

.field private callback:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

.field private cancelled:Z

.field private closed:Z

.field private final method:Ljava/lang/String;

.field private final request:Lcom/squareup/okhttp/Request$Builder;

.field final synthetic this$0:Lcom/dropbox/core/http/OkHttpRequestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttpRequestor;Ljava/lang/String;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 179
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 180
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->method:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->request:Lcom/squareup/okhttp/Request$Builder;

    .line 183
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    .line 184
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    .line 185
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    .line 187
    iput-boolean v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->closed:Z

    .line 188
    iput-boolean v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->cancelled:Z

    .line 189
    return-void
.end method

.method private assertNoBody()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    return-void
.end method

.method private setBody(Lcom/squareup/okhttp/RequestBody;)V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->assertNoBody()V

    .line 217
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    .line 218
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->request:Lcom/squareup/okhttp/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    .line 219
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttpRequestor;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->request:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/http/OkHttpRequestor;->configureRequest(Lcom/squareup/okhttp/Request$Builder;)V

    .line 220
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 249
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->cancelled:Z

    .line 250
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->close()V

    .line 251
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->closed:Z

    .line 242
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->cancelled:Z

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    if-nez v0, :cond_1

    .line 259
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->upload([B)V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    if-eqz v0, :cond_2

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 274
    :goto_1
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttpRequestor;->access$200(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpRequestor;->access$100(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->request:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    .line 272
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    instance-of v0, v0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->body:Lcom/squareup/okhttp/RequestBody;

    check-cast v0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 204
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;-><init>()V

    .line 205
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->setBody(Lcom/squareup/okhttp/RequestBody;)V

    .line 207
    new-instance v1, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttpRequestor$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    .line 208
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttpRequestor;->access$100(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->request:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    .line 210
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->call:Lcom/squareup/okhttp/Call;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 211
    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->setBody(Lcom/squareup/okhttp/RequestBody;)V

    .line 225
    return-void
.end method

.method public upload([B)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$BufferedUploader;->setBody(Lcom/squareup/okhttp/RequestBody;)V

    .line 230
    return-void
.end method
