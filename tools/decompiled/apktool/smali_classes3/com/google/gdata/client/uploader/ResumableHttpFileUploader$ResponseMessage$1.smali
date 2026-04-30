.class Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;
.super Ljava/lang/Object;
.source "ResumableHttpFileUploader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;


# direct methods
.method constructor <init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-static {v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->access$000(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-static {v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->access$100(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 111
    if-lez v3, :cond_0

    .line 112
    new-array v4, v3, [B

    .line 113
    iget-object v5, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-static {v5}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->access$100(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    .line 114
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_0
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
