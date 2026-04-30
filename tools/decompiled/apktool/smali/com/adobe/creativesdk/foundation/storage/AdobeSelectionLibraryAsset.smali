.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionLibraryAsset.java"


# instance fields
.field protected selected3DLightIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected selected3DMaterialIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected selected3DModelIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedAnimationIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedColorIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedColorThemeIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectedComponent:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field selectedElementIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedImageIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

.field selectedLibraryID:Ljava/lang/String;

.field protected selectedPatternIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedTemplateIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    .line 150
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedComponent:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedComponent:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 227
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedElementIDs:Ljava/util/ArrayList;

    .line 228
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    .line 230
    return-void
.end method


# virtual methods
.method filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;-><init>()V

    .line 204
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;->setType(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedComponent:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getAllElementsWithFilter(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementFilter;)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v2

    .line 221
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 211
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedElementIDs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 218
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 221
    goto :goto_0
.end method

.method public getSelected3DLightIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "application/vnd.adobe.element.light+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelected3DMaterialIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    const-string/jumbo v0, "application/vnd.adobe.element.material+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelected3DModelIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    const-string/jumbo v0, "application/vnd.adobe.element.3d+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAnimationIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    const-string/jumbo v0, "application/vnd.adobe.element.animation+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedColorIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    const-string/jumbo v0, "application/vnd.adobe.element.color+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedColorThemeIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const-string/jumbo v0, "application/vnd.adobe.element.colortheme+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getSelectedElementIDs()Ljava/util/ArrayList;
    .locals 1
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
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedImageIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    const-string/jumbo v0, "application/vnd.adobe.element.image+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;

    return-object v0
.end method

.method public getSelectedLibraryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedComponent:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPatternIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const-string/jumbo v0, "application/vnd.adobe.element.pattern+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTemplateIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    const-string/jumbo v0, "application/vnd.adobe.element.template+dcx"

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->filterAndConvertToIds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getselectedElementIDs()Ljava/util/ArrayList;
    .locals 1
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
    .line 189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedElementIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected setSelectedColorIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedColorIDs:Ljava/util/ArrayList;

    .line 170
    return-void
.end method

.method protected setSelectedColorThemeIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedColorThemeIDs:Ljava/util/ArrayList;

    .line 174
    return-void
.end method

.method protected setSelectedImageIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;->selectedImageIDs:Ljava/util/ArrayList;

    .line 179
    return-void
.end method
