.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionPhotoAsset.java"


# instance fields
.field protected selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;


# direct methods
.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 29
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    return-object v0
.end method

.method protected setSelectedItem(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPhotoAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 24
    return-void
.end method
