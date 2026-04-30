.class Lcom/adobe/premiereclip/sharing/TwitterUpload$9;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterUpload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadPart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

.field final synthetic val$chunkPart:I

.field final synthetic val$data:[B

.field final synthetic val$fileSize:I

.field final synthetic val$isLast:Z

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;ZII[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iput-boolean p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$isLast:Z

    iput p3, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$chunkPart:I

    iput p4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$fileSize:I

    iput-object p5, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$data:[B

    iput-object p6, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 3

    .prologue
    .line 244
    const-string/jumbo v0, "TwitterUpload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not append video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 246
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 6

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$isLast:Z

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iget v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$chunkPart:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    iget v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$fileSize:I

    const/high16 v4, 0x100000

    div-int/2addr v1, v4

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$402(Lcom/adobe/premiereclip/sharing/TwitterUpload;D)D

    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$900(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$data:[B

    iget v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$fileSize:I

    iget v3, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$chunkPart:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1000(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BIILjava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$9;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1200(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    goto :goto_0
.end method
