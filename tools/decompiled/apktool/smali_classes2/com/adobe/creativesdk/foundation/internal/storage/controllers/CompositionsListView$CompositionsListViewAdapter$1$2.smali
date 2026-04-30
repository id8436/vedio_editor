.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;
.super Ljava/lang/Object;
.source "CompositionsListView.java"

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
.field final synthetic this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;

    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$packageCellViewHolder:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$pages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;->this$2:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1;->val$page:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$CompositionCellViewHolder;JLandroid/graphics/drawable/BitmapDrawable;)V

    .line 364
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 360
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CompositionsListView$CompositionsListViewAdapter$1$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method
