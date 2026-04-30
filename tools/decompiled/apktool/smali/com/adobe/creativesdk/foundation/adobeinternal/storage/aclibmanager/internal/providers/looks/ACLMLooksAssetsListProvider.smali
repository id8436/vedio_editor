.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;
.source "ACLMLooksAssetsListProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "application/vnd.adobe.element.look+dcx"

    aput-object v2, v0, v1

    .line 13
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/looks/ACLMLooksAssetsListProvider;->setElementMediaTypes([Ljava/lang/String;)V

    .line 14
    return-void
.end method
