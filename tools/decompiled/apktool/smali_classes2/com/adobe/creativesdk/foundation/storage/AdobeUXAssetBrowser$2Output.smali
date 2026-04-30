.class Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;
.super Ljava/lang/Object;
.source "AdobeUXAssetBrowser.java"


# instance fields
.field _error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method
