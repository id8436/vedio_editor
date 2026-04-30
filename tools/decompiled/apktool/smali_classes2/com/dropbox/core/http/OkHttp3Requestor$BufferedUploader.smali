.class Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "OkHttp3Requestor.java"


# instance fields
.field private body:Ld/az;

.field private call:Ld/g;

.field private callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

.field private cancelled:Z

.field private closed:Z

.field private final method:Ljava/lang/String;

.field private final request:Ld/ay;

.field final synthetic this$0:Lcom/dropbox/core/http/OkHttp3Requestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Ld/ay;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 189
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->method:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Ld/ay;

    .line 193
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    .line 194
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    .line 195
    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    .line 197
    iput-boolean v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->closed:Z

    .line 198
    iput-boolean v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    .line 199
    return-void
.end method

.method private assertNoBody()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private setBody(Ld/az;)V
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->assertNoBody()V

    .line 227
    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Ld/ay;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ld/ay;->a(Ljava/lang/String;Ld/az;)Ld/ay;

    .line 229
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Ld/ay;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Ld/ay;)V

    .line 230
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    invoke-interface {v0}, Ld/g;->b()V

    .line 259
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    .line 260
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->close()V

    .line 261
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->closed:Z

    .line 252
    return-void

    .line 247
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
    .line 265
    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->cancelled:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    if-nez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->upload([B)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    if-eqz v0, :cond_2

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->getResponse()Ld/bd;

    move-result-object v0

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Ld/bd;)Ld/bd;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ld/bd;->e()Ld/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$200(Ld/ag;)Ljava/util/Map;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {v0}, Ld/bd;->b()I

    move-result v3

    invoke-virtual {v0}, Ld/bd;->f()Ld/bf;

    move-result-object v0

    invoke-virtual {v0}, Ld/bf;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Ld/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Ld/ay;

    invoke-virtual {v1}, Ld/ay;->b()Ld/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/ar;->a(Ld/ax;)Ld/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    .line 282
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    invoke-interface {v0}, Ld/g;->a()Ld/bd;

    move-result-object v0

    goto :goto_1

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    instance-of v0, v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->body:Ld/az;

    check-cast v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;-><init>()V

    .line 215
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Ld/az;)V

    .line 217
    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;Lcom/dropbox/core/http/OkHttp3Requestor$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    .line 218
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->this$0:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Ld/ar;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->request:Ld/ay;

    invoke-virtual {v2}, Ld/ay;->b()Ld/ax;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/ar;->a(Ld/ax;)Ld/g;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    .line 220
    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->call:Ld/g;

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->callback:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-interface {v1, v2}, Ld/g;->a(Ld/i;)V

    .line 221
    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ld/az;->create(Ld/an;Ljava/io/File;)Ld/az;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Ld/az;)V

    .line 235
    return-void
.end method

.method public upload([B)V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ld/az;->create(Ld/an;[B)Ld/az;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;->setBody(Ld/az;)V

    .line 240
    return-void
.end method
