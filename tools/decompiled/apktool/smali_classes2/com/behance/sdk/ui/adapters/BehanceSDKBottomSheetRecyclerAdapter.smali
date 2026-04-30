.class public Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKBottomSheetRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;

.field private context:Landroid/content/Context;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private shareItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->context:Landroid/content/Context;

    .line 31
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->shareItems:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->shareItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->shareItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->notifyItemRangeInserted(II)V

    .line 69
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->shareItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;I)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->contentContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->shareItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;

    .line 53
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->contentContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 54
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->contentContainer:Landroid/view/View;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKShareContentAdapterItemDTO;->getDisplayLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_adapter_bottom_share_sheet_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKBottomSheetItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKBottomSheetRecyclerAdapter$Callbacks;

    .line 37
    return-void
.end method
