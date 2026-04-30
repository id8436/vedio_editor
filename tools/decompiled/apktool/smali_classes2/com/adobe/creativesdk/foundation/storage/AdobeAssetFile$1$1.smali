.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1$1;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1;Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1$1;->val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$1$1;->val$error:Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 198
    return-void
.end method
