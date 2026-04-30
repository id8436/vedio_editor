.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$3;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$6;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 485
    return-void
.end method
