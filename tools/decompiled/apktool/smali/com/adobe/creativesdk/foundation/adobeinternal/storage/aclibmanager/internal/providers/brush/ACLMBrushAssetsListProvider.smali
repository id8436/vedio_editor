.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;
.source "ACLMBrushAssetsListProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;-><init>()V

    .line 12
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsUtil;->getContentType()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;->setContentTypes([Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsListProvider;->setFilterType(Ljava/lang/String;)V

    .line 14
    return-void
.end method
