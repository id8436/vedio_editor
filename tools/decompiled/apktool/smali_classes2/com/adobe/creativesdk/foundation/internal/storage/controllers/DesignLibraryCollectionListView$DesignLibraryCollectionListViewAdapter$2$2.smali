.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2$2;
.super Ljava/lang/Object;
.source "DesignLibraryCollectionListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;->val$collectionCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->setImageDrawagle(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 656
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;->val$collectionCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$CollectionCellViewHolder;->_itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getLibraryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 657
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 652
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$2$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
