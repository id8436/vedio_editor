.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8$1;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 778
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeAssetPSDFile.getRenditionFromServerForLayer"

    const-string/jumbo v2, "Adding to caches is failed for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    iget-object v5, v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;->href:Ljava/net/URI;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 775
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$8$1;->onCompletion(Ljava/lang/Boolean;)V

    return-void
.end method
