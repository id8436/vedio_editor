.class Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$13;
.super Ljava/lang/Object;
.source "AdobeImageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

.field final synthetic val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$13;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$13;->val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressNotification(D)V
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$13;->val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onProgress(D)V

    .line 1277
    return-void
.end method
