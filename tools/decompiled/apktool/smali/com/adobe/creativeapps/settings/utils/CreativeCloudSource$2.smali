.class Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;
.super Ljava/lang/Object;
.source "CreativeCloudSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageSessionQuotaCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

.field final synthetic val$callback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;->this$0:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource;

    iput-object p2, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;->val$callback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;->val$callback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;->storageUpdateInfo(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 110
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;->val$callback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;->val$callback:Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-interface {v0, p1, v1, v1, v1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$ICreativeCloudStorageInfoCallback;->storageUpdateInfo(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    .line 105
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativeapps/settings/utils/CreativeCloudSource$2;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
