.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;
.source "AdobeSelectionAssetFile.java"


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAssetFile;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    return-object v0
.end method
