.class final Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;
.super Lcom/dropbox/core/v1/DbxClientV1$Uploader;
.source "DbxClientV1.java"


# instance fields
.field private final body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

.field private final numBytes:J

.field private final targetPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/dropbox/core/v1/DbxClientV1;

.field private final writeMode:Lcom/dropbox/core/v1/DbxWriteMode;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V
    .locals 0

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/v1/DbxClientV1$Uploader;-><init>()V

    .line 1275
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->targetPath:Ljava/lang/String;

    .line 1276
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->writeMode:Lcom/dropbox/core/v1/DbxWriteMode;

    .line 1277
    iput-wide p4, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->numBytes:J

    .line 1278
    iput-object p6, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    .line 1279
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;Lcom/dropbox/core/v1/DbxClientV1$1;)V
    .locals 0

    .prologue
    .line 1266
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;-><init>(Lcom/dropbox/core/v1/DbxClientV1;Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;)Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->writeMode:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->targetPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 1291
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 1329
    return-void
.end method

.method public finish()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$400(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1300
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->this$0:Lcom/dropbox/core/v1/DbxClientV1;

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->targetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->writeMode:Lcom/dropbox/core/v1/DbxWriteMode;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$500(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)I

    move-result v0

    int-to-long v4, v0

    new-instance v6, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;

    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    .line 1301
    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$600(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)[B

    move-result-object v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v8}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$500(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)I

    move-result v8

    invoke-direct {v6, v0, v7, v8}, Lcom/dropbox/core/DbxStreamWriter$ByteArrayCopier;-><init>([BII)V

    .line 1300
    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/core/v1/DbxClientV1;->uploadFileSingle(Ljava/lang/String;Lcom/dropbox/core/v1/DbxWriteMode;JLcom/dropbox/core/DbxStreamWriter;)Lcom/dropbox/core/v1/DbxEntry$File;

    move-result-object v0

    .line 1317
    :goto_0
    return-object v0

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$400(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$700(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)V

    .line 1308
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->numBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1310
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->numBytes:J

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$800(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1311
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'numBytes\' is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->numBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but you wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    invoke-static {v2}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;->access$800(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_1
    const/4 v1, 0x3

    new-instance v2, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader$1;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader$1;-><init>(Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxEntry$File;

    goto :goto_0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploader;->body:Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadOutputStream;

    return-object v0
.end method
