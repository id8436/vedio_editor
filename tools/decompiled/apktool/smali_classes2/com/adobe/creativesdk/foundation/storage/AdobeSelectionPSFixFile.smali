.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionPSFixFile.java"


# instance fields
.field selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;

.field selectedPageIndex:I


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;

    .line 49
    iput p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;->selectedPageIndex:I

    .line 51
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSFixFile;

    return-object v0
.end method

.method public getSelectedPageIndex()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionPSFixFile;->selectedPageIndex:I

    return v0
.end method
