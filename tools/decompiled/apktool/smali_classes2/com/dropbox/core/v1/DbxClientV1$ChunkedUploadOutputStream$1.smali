.class Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V
    .locals 0

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    iget-object v0, v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$600(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$1;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v3}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$500(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadFirst([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
