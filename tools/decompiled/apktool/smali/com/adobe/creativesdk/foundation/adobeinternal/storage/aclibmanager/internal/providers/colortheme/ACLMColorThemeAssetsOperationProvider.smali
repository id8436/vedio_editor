.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsOperationProvider;
.super Ljava/lang/Object;
.source "ACLMColorThemeAssetsOperationProvider.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetOperationsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/IACLibraryOpResultCallback;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 24
    const-string/jumbo v0, "application/vnd.adobe.colortheme+json"

    invoke-virtual {p1, v0, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getFirstRepresentationOfType(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    invoke-interface {p4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/IACLibraryOpResultCallback;->handleLibraryOpFailure(Ljava/lang/Object;)V

    .line 28
    :cond_0
    const-string/jumbo v2, "data"

    const-string/jumbo v3, "colortheme"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 31
    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->addColorTheme(Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p4, p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/IACLibraryOpResultCallback;->handleLibraryOpSuccess(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 42
    :goto_1
    return-void

    .line 32
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 33
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/IACLibraryOpResultCallback;->handleLibraryOpFailure(Ljava/lang/Object;)V

    goto :goto_1
.end method
