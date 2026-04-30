.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;
.super Ljava/lang/Object;
.source "ACLibraryAssetGenericRenditionHelper.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$renditionPathCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$shouldTryLocalFullRendition:Z


# direct methods
.method constructor <init>(ZLcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$shouldTryLocalFullRendition:Z

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$renditionPathCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V
    .locals 4

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$shouldTryLocalFullRendition:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$element:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$renditionPathCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper;->getFullSizeGenericRenditionPath(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->val$renditionPathCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/helpers/ACLibraryAssetGenericRenditionHelper$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    return-void
.end method
