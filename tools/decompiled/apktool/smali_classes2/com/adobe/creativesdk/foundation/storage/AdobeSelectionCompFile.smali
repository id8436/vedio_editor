.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionCompFile.java"


# instance fields
.field selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

.field selectedPageIndex:I


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    .line 48
    iput p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;->selectedPageIndex:I

    .line 50
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetCompFile;

    return-object v0
.end method

.method public getSelectedPageIndex()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionCompFile;->selectedPageIndex:I

    return v0
.end method
