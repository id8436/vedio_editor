.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BehanceSDKProjectEditorReorderViewHolder.java"

# interfaces
.implements Lcom/behance/sdk/ui/adapters/helpers/BehanceSDKViewHolderTouchHelper;


# instance fields
.field public cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

.field public cardReorderHandle:Landroid/widget/ImageView;

.field public cardReorderThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->card_reorder_handle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderHandle:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/behance/sdk/R$id;->card_reorder_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderThumbnail:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/behance/sdk/R$id;->card_reorder_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorReorderViewHolder;->cardReorderDescription:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    .line 26
    return-void
.end method


# virtual methods
.method public onItemCleared()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onItemSelected()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
