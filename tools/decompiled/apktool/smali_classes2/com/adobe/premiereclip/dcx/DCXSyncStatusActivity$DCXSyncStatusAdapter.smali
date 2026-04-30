.class public Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DCXSyncStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private syncTableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->this$0:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->syncTableItems:Ljava/util/List;

    .line 97
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->syncTableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;I)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->syncTableItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;

    .line 117
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->projectName:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getProjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getUploadStatusText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->uploadText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v1

    .line 129
    :goto_0
    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getDownloadStatusText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 130
    iget-object v2, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_1
    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCcAssetDownloadText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 140
    iget-object v2, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->ccAssetDownloadText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_2
    if-nez v0, :cond_0

    .line 150
    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getSyncedStatusText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 151
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :cond_0
    :goto_3
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->posterImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->resetViewIfBitmapRecycled(Landroid/widget/ImageView;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCompositeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getProjectPosterPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->posterImage:Landroid/widget/ImageView;

    const/16 v3, 0x78

    const/16 v4, 0x46

    new-instance v6, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;

    invoke-direct {v6, p0, v7, p1}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$1;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;)V

    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/util/ProjectPosterView;->load(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V

    .line 175
    return-void

    .line 124
    :cond_1
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->uploadText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->uploadText:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getUploadStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v5

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getDownloadStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v5

    goto :goto_1

    .line 144
    :cond_3
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->ccAssetDownloadText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->ccAssetDownloadText:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getCcAssetDownloadText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v5

    goto :goto_2

    .line 154
    :cond_4
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTableItem;->getSyncedStatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010d

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;Landroid/view/View;)V

    .line 111
    return-object v1
.end method
