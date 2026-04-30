.class Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;
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
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

.field final synthetic val$localURL:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->val$localURL:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 4

    .prologue
    .line 109
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "media upload cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a03a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 3

    .prologue
    .line 119
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "media upload success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 5

    .prologue
    .line 129
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    .line 130
    const-string/jumbo v0, "CreativeCloudExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media upload error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x199

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 132
    :cond_0
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "media already exists, updating it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$300(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->val$localURL:Ljava/net/URL;

    const-string/jumbo v2, "video/mp4"

    new-instance v3, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;

    invoke-direct {v3, p0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2$1;-><init>(Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;)V

    iget-object v4, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    .line 182
    invoke-static {v4}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$200(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Landroid/os/Handler;

    move-result-object v4

    .line 133
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->update(Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a039e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onCompleted(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 3

    .prologue
    .line 194
    const-string/jumbo v0, "CreativeCloudExport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media upload progess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$2;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$100(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;)Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/sharing/SharingManager$SharingComponentListener;->onProgress(D)V

    .line 200
    :cond_0
    return-void
.end method
