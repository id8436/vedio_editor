.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionDrawAsset.java"


# instance fields
.field selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

.field selectedPageIndex:I


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    .line 47
    iput p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;->selectedPageIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDrawFile;

    return-object v0
.end method

.method public getSelectedPageIndex()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionDrawAsset;->selectedPageIndex:I

    return v0
.end method
