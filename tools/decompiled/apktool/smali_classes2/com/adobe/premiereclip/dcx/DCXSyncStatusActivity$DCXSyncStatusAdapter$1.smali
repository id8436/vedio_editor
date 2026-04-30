.class Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;
.super Ljava/lang/Object;
.source "DCXSyncStatusActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;


# instance fields
.field final synthetic this$1:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

.field final synthetic val$holder:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;

.field final synthetic val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;->this$1:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    iput-object p3, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;->val$holder:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;->val$tableItem:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;->val$holder:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->posterImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    :cond_0
    return-void
.end method
