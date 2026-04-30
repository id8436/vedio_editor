.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;
.super Ljava/lang/Object;
.source "DesignLibraryItemsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;->val$imageCollectionCellHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->getLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;->val$elem:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;->val$imageCollectionCellHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->displayThumbnail(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 1124
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1;->val$imageCollectionCellHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$ImageCollectionCellHolder;->displayThumbnail(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1117
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$LibraryItemsSectionAdapter$1$1;->onCompletion(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
