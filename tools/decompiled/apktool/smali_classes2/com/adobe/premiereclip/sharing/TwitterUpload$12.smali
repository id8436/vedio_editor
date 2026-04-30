.class Lcom/adobe/premiereclip/sharing/TwitterUpload$12;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterUpload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c",
        "<",
        "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoTweet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/ah;)V
    .locals 2

    .prologue
    .line 342
    const-string/jumbo v0, "TwitterUpload"

    const-string/jumbo v1, "Failed upload status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 344
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/s",
            "<",
            "Lcom/adobe/premiereclip/sharing/CustomTwitterApiClient$VideoTweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    const-string/jumbo v0, "TwitterUpload"

    const-string/jumbo v1, "result of status: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v2, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$702(Lcom/adobe/premiereclip/sharing/TwitterUpload;D)D

    .line 336
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$900(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V

    .line 337
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$12;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$1100(Lcom/adobe/premiereclip/sharing/TwitterUpload;Z)V

    .line 338
    return-void
.end method
