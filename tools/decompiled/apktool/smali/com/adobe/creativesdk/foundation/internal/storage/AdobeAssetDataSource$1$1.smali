.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$1;
.super Ljava/lang/Object;
.source "AdobeAssetDataSource.java"

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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I
    .locals 2

    .prologue
    .line 262
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    .line 263
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPackage;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    .line 264
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 259
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource$1$1;->compare(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I

    move-result v0

    return v0
.end method
