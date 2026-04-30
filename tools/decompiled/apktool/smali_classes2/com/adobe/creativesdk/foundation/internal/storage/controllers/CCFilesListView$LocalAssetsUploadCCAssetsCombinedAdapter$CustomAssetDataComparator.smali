.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;
.super Ljava/lang/Object;
.source "CCFilesListView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
        ">;"
    }
.end annotation


# instance fields
.field private _isSortByAlpha:Z

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;Z)V
    .locals 1

    .prologue
    .line 670
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->_isSortByAlpha:Z

    .line 671
    iput-boolean p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->_isSortByAlpha:Z

    .line 672
    return-void
.end method

.method private compareAlpha(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 675
    .line 676
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 677
    iget-object v2, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 678
    if-le v1, v2, :cond_1

    .line 679
    const/4 v0, 0x1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    if-ge v1, v2, :cond_0

    .line 682
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private compareDate(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)I
    .locals 6

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->modificationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 690
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->modificationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 691
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 692
    const/4 v0, -0x1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 695
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)I
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->_isSortByAlpha:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->compareAlpha(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)I

    move-result v0

    .line 706
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->compareDate(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 666
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$LocalAssetsUploadCCAssetsCombinedAdapter$CustomAssetDataComparator;->compare(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)I

    move-result v0

    return v0
.end method
