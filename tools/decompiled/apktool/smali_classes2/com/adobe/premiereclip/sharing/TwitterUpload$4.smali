.class Lcom/adobe/premiereclip/sharing/TwitterUpload$4;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterUpload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

.field final synthetic val$bytes:[B

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BILjava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->val$bytes:[B

    iput p3, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->val$size:I

    iput-object p4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "Failed"

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/ah;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 179
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;

    iget-wide v2, v0, Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoUploadInit;->mediaId:J

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$802(Lcom/adobe/premiereclip/sharing/TwitterUpload;J)J

    .line 170
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$302(Lcom/adobe/premiereclip/sharing/TwitterUpload;D)D

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$900(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->val$bytes:[B

    iget v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->val$size:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$4;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1000(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BIILjava/lang/String;)V

    .line 173
    return-void
.end method
