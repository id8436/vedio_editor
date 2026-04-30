.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/brush/ACLMBrushAssetsUtil;
.super Ljava/lang/Object;
.source "ACLMBrushAssetsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentType()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "application/vnd.adobe.brush+zip"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "application/vnd.adobe.ribbon.brush+zip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "application/vnd.adobe.scatter.brush+zip"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "application/vnd.adobe.vector.brush+zip"

    aput-object v2, v0, v1

    .line 20
    return-object v0
.end method

.method public static getElementFilterTypes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const-string/jumbo v1, "application/vnd.adobe.element.brush+dcx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-object v0
.end method
