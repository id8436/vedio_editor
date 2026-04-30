.class public Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;
.super Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;
.source "AdobeSelectionAsset.java"


# instance fields
.field protected selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 50
    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    return-object v0
.end method

.method protected setSelectedItem(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionAsset;->selectedItem:Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 45
    return-void
.end method
