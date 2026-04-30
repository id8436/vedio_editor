.class Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;
.super Lcom/dropbox/core/DbxRequestUtil$RequestMaker;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/DbxRequestUtil$RequestMaker",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

.field final synthetic val$arrayOffsetFinal:I

.field final synthetic val$uploadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->val$uploadId:Ljava/lang/String;

    iput p3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->val$arrayOffsetFinal:I

    invoke-direct {p0}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    iget-object v0, v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->val$uploadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v2}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$800(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v4}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$600(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)[B

    move-result-object v4

    iget v5, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->val$arrayOffsetFinal:I

    iget-object v6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->this$1:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v6}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$500(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)I

    move-result v6

    iget v7, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->val$arrayOffsetFinal:I

    sub-int/2addr v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->chunkedUploadAppend(Ljava/lang/String;J[BII)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream$2;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
