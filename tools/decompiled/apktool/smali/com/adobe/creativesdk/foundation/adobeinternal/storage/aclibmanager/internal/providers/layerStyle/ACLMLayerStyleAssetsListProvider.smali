.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;
.source "ACLMLayerStyleAssetsListProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;-><init>()V

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "application/vnd.adobe.element.layerstyle+dcx"

    aput-object v2, v0, v1

    .line 14
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/layerStyle/ACLMLayerStyleAssetsListProvider;->setElementMediaTypes([Ljava/lang/String;)V

    .line 15
    return-void
.end method
