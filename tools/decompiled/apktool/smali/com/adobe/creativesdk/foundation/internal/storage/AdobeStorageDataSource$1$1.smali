.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1$1;
.super Ljava/lang/Object;
.source "AdobeStorageDataSource.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->sortIndexCollator:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->currentSortState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;->SORT_STATE_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    if-ne v0, v1, :cond_0

    .line 470
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 472
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 466
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$1$1;->compare(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I

    move-result v0

    return v0
.end method
