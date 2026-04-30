.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionSketchAsset.java"


# instance fields
.field selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

.field selectedPageIndex:I


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    .line 50
    iput p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;->selectedPageIndex:I

    .line 52
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetSketchbook;

    return-object v0
.end method

.method public getSelectedPageIndex()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionSketchAsset;->selectedPageIndex:I

    return v0
.end method
