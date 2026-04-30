.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;
.super Ljava/lang/Object;
.source "LibraryItemsOneUpViewController.java"


# static fields
.field private static final LIBRARY_ID:Ljava/lang/String; = "library_id"

.field private static final START_ITEM_INDEX:Ljava/lang/String; = "startindex"


# instance fields
.field private itemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field private library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field private startIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private buildLibraryItemsList()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/color/ACLMColorAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/colortheme/ACLMColorThemeAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;-><init>()V

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/internal/providers/image/ACLMImageAssetsListProvider;->getElements(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    return-void
.end method

.method public static createInstanceFromConfigurationBundle(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;-><init>()V

    .line 34
    const-string/jumbo v1, "library_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsFragment;->getLibraryCompositeFromID(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    .line 38
    const-string/jumbo v2, "startindex"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 40
    invoke-direct {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->setStartIndex(I)V

    .line 41
    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    .line 43
    return-object v0
.end method

.method public static createInstanceFromLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/List;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;I)",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;-><init>()V

    .line 72
    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->setLibraryAndItems(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/List;)V

    .line 73
    invoke-direct {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->setStartIndex(I)V

    .line 74
    return-object v0
.end method

.method private setLibrary(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 52
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->buildLibraryItemsList()V

    .line 53
    return-void
.end method

.method private setLibraryAndItems(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 48
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    .line 49
    return-void
.end method

.method private setStartIndex(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->startIndex:I

    .line 66
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemAtPos(I)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->itemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->startIndex:I

    return v0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "startindex"

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->startIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v0, "library_id"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/LibraryItemsOneUpViewController;->library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
