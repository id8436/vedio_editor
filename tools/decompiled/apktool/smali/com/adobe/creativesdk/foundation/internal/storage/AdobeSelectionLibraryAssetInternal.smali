.class public Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionLibraryAssetInternal;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;
.source "AdobeSelectionLibraryAssetInternal.java"


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetLibrary;)V

    .line 35
    return-void
.end method


# virtual methods
.method public setSelectedColorIDs(Ljava/util/ArrayList;)V
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

    .prologue
    .line 38
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionLibraryAssetInternal;->selectedColorIDs:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public setSelectedColorThemeIDs(Ljava/util/ArrayList;)V
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

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionLibraryAssetInternal;->selectedColorThemeIDs:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public setSelectedImageIDs(Ljava/util/ArrayList;)V
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

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionLibraryAssetInternal;->selectedImageIDs:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public setSelectedPatternIDs(Ljava/util/ArrayList;)V
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

    .prologue
    .line 47
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionLibraryAssetInternal;->selectedPatternIDs:Ljava/util/ArrayList;

    .line 48
    return-void
.end method
