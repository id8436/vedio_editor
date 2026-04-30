.class Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;
.super Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler",
        "<",
        "Lcom/dropbox/core/v1/DbxEntry$File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;

.field final synthetic val$bytesWritten:J


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;J)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;->this$0:Lcom/dropbox/core/v1/DbxClientV1$SingleUploader;

    iput-wide p2, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;->val$bytesWritten:J

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;

    move-result-object v0

    throw v0

    .line 853
    :cond_0
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry$File;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/DbxRequestUtil;->readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    .line 855
    iget-wide v2, v0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    iget-wide v4, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;->val$bytesWritten:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 856
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v1

    .line 857
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we uploaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;->val$bytesWritten:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", but server returned metadata entry with file size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/dropbox/core/v1/DbxEntry$File;->numBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_1
    return-object v0
.end method

.method public bridge synthetic handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$SingleUploader$1;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    return-object v0
.end method
