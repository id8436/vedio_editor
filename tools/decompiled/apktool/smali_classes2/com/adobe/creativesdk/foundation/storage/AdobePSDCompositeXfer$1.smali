.class final Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeManifestUploadRequest;


# instance fields
.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

.field final synthetic val$imageSession:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

.field final synthetic val$storageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$storageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$imageSession:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 111
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$storageSession:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;->resourceForManifest(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getRemoteData()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->setData([B)V

    .line 114
    new-instance v5, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1$1;

    invoke-direct {v5, p0, p1, v2, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;)V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$imageSession:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getPsdHref()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$1;->val$composite:Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer;->ensureLeadingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->updatePSDAt(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\"Hello\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0
.end method
