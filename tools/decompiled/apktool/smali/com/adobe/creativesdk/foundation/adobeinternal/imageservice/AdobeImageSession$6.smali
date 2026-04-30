.class Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;
.super Ljava/lang/Object;
.source "AdobeImageSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

.field final synthetic val$entitlementError:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

.field final synthetic val$handler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;->val$handler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;->val$entitlementError:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;->val$handler:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$6;->val$entitlementError:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 884
    return-void
.end method
