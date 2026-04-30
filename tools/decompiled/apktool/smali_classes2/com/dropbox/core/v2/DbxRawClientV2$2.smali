.class Lcom/dropbox/core/v2/DbxRawClientV2$2;
.super Ljava/lang/Object;
.source "DbxRawClientV2.java"

# interfaces
.implements Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution",
        "<",
        "Lcom/dropbox/core/DbxDownloader",
        "<TResT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

.field private userIdAnon:Ljava/lang/String;

.field final synthetic val$body:[B

.field final synthetic val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

.field final synthetic val$headers:Ljava/util/List;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

    iput-object p2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$body:[B

    iput-object p5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$headers:Ljava/util/List;

    iput-object p6, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    iput-object p7, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/DbxRawClientV2$2;Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->init(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;)Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/v2/DbxRawClientV2$RetriableExecution",
            "<",
            "Lcom/dropbox/core/DbxDownloader",
            "<TResT;>;>;"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->userIdAnon:Ljava/lang/String;

    .line 193
    return-object p0
.end method


# virtual methods
.method public execute()Lcom/dropbox/core/DbxDownloader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/DbxDownloader",
            "<TResT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->this$0:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-static {v0}, Lcom/dropbox/core/v2/DbxRawClientV2;->access$000(Lcom/dropbox/core/v2/DbxRawClientV2;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    const-string/jumbo v1, "OfficialDropboxJavaSDKv2"

    iget-object v2, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$body:[B

    iget-object v5, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$headers:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v2

    .line 161
    :try_start_0
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->userIdAnon:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/d/a/a/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/d/a/a/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 165
    :sswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "dropbox-api-result"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing Dropbox-API-Result header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/d/a/a/m; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :catch_1
    move-exception v0

    .line 187
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 169
    :cond_0
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 170
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No Dropbox-API-Result header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-nez v0, :cond_2

    .line 174
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null Dropbox-API-Result header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$responseSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v3, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    new-instance v3, Lcom/dropbox/core/DbxDownloader;

    invoke-virtual {v1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/dropbox/core/DbxDownloader;-><init>(Ljava/lang/Object;Ljava/io/InputStream;)V

    return-object v3

    .line 180
    :sswitch_1
    iget-object v0, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->val$errorSerializer:Lcom/dropbox/core/stone/StoneSerializer;

    iget-object v3, p0, Lcom/dropbox/core/v2/DbxRawClientV2$2;->userIdAnon:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/dropbox/core/DbxWrappedException;->fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/d/a/a/m; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_0
        0x199 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxRawClientV2$2;->execute()Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method
