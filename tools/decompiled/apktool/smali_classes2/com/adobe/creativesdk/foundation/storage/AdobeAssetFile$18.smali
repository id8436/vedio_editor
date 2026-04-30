.class final Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$18;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 0

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$18;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$18;->val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$18;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$18;->val$error:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 1577
    return-void
.end method
