.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;
.super Ljava/lang/Object;
.source "ACLMDefaultAssetsListProvider.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/IACLMAssetsListProvider;


# instance fields
.field private _filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

.field private _mediaTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil;->getElementsOfFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :cond_1
    return-object v0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_mediaTypes:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/util/ACLibraryManagerUtil;->getElementsOfMediaType(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentTypes([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setMatchAny(Z)V

    .line 26
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setContentTypes(Ljava/util/ArrayList;)V

    .line 27
    return-void
.end method

.method public setElementMediaTypes([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_mediaTypes:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setFilterType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/ACLMDefaultAssetsListProvider;->_filter:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setType(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
