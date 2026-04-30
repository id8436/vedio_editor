.class public Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;
.super Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKAbstractViewHolder;
.source "BehanceSDKProjectViewHolder.java"


# instance fields
.field public appreciations:Landroid/widget/TextView;

.field public appreciationsContainer:Landroid/view/View;

.field public artist:Landroid/widget/TextView;

.field public cover:Lcom/facebook/drawee/view/d;

.field public loader:Landroid/widget/ProgressBar;

.field public title:Landroid/widget/TextView;

.field public views:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKAbstractViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->card_loader:I

    if-ne v0, v1, :cond_0

    .line 23
    sget v0, Lcom/behance/sdk/R$id;->bsdk_card_loader_progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->loader:Landroid/widget/ProgressBar;

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 37
    :goto_0
    return-void

    .line 27
    :cond_0
    sget v0, Lcom/behance/sdk/R$id;->bsdk_discover_project_card_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->title:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/behance/sdk/R$id;->bsdk_discover_project_card_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->artist:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/behance/sdk/R$id;->bsdk_discover_project_card_appreciations:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->appreciations:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/behance/sdk/R$id;->bsdk_discover_project_card_views:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->views:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/behance/sdk/R$id;->bsdk_discover_project_card_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/d;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->cover:Lcom/facebook/drawee/view/d;

    .line 33
    sget v0, Lcom/behance/sdk/R$id;->bsdk_discover_project_card_appreciations_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->appreciationsContainer:Landroid/view/View;

    .line 34
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0
.end method
