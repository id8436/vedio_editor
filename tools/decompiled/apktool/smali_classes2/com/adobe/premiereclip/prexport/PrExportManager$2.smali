.class Lcom/adobe/premiereclip/prexport/PrExportManager$2;
.super Ljava/lang/Object;
.source "PrExportManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

.field final synthetic val$transferSizeInBytes:J


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/prexport/PrExportManager;J)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    iput-wide p2, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->val$transferSizeInBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 6

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->val$transferSizeInBytes:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v0, v2

    .line 570
    const-string/jumbo v2, "PrExportMgr"

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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 572
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "not enough space in CC for transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$100(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$100(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 581
    const-string/jumbo v0, "PrExportManager"

    const-string/jumbo v1, "unable to get CC quota"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->this$0:Lcom/adobe/premiereclip/prexport/PrExportManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportManager;->access$100(Lcom/adobe/premiereclip/prexport/PrExportManager;Z)V

    .line 583
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 565
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportManager$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
