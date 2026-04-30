.class Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;
.super Ljava/lang/Object;
.source "AdobeUXAssetBrowser.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

.field final synthetic val$op:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;->val$op:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;->val$op:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 275
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method
