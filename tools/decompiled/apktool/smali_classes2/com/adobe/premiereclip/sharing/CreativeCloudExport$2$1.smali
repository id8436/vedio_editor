.class Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;
.super Ljava/lang/Object;
.source "CreativeCloudExport.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 4

    .prologue
    .line 136
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "media update cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a03a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "media update success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 156
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 157
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 158
    const-string/jumbo v0, "CreativeCloudExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media update error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a039e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "media update success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 133
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;->this$1:Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;

    iget-object v0, v0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onProgress(D)V

    .line 181
    :cond_0
    return-void
.end method
