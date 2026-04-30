.class public Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DCXSyncStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public ccAssetDownloadText:Landroid/widget/TextView;

.field public downloadText:Landroid/widget/TextView;

.field public posterImage:Landroid/widget/ImageView;

.field public projectName:Landroid/widget/TextView;

.field public syncedText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

.field public uploadText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 185
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    .line 186
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 187
    invoke-static {p2}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 188
    const v0, 0x7f1204a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->posterImage:Landroid/widget/ImageView;

    .line 189
    const v0, 0x7f1204a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->projectName:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f1204a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->uploadText:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f1204a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f1204a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->syncedText:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f1204a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter$ViewHolder;->ccAssetDownloadText:Landroid/widget/TextView;

    .line 195
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method
