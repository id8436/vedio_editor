.class Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;
.super Ljava/lang/Object;
.source "CreativeCloudExport.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

.field final synthetic val$transferSizeInBytes:J

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;JLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    iput-wide p2, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->val$transferSizeInBytes:J

    iput-object p4, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->val$transferSizeInBytes:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    .line 73
    const-string/jumbo v2, "CreativeCloudExport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transfer size and available size in GB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 75
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "not enough space in CC for transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$000(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;Landroid/net/Uri;Z)V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$000(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v0, "CreativeCloudExport"

    const-string/jumbo v1, "unable to get CC quota"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->this$0:Lcom/adobe/premiereclip/sharing/CreativeCloudExport;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport;->access$000(Lcom/adobe/premiereclip/sharing/CreativeCloudExport;Landroid/net/Uri;Z)V

    .line 86
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/CreativeCloudExport$1;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
