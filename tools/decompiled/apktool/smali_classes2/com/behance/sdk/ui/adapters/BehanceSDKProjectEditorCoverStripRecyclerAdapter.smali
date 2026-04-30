.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectEditorCoverStripRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;

.field private context:Landroid/content/Context;

.field private currentlySelectedPos:I

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:I

.field private selectedCover:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IILcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKImageDTO;",
            ">;II",
            "Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    .line 35
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    .line 37
    iput p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->orientation:I

    .line 38
    iput-object p5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;

    .line 39
    iput p4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$CoverCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->selectedCover:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->selectedCover:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public addCoverItem(Lcom/behance/sdk/dto/BehanceSDKImageDTO;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    .line 106
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    .line 107
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->notifyItemChanged(I)V

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->notifyItemChanged(I)V

    .line 109
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->notifyItemInserted(I)V

    .line 110
    return-void
.end method

.method public getCurrentlySelectedPos()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;I)V
    .locals 8

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->images:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    .line 51
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getWidth()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getHeight()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->setAspectRatio(D)V

    .line 53
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/b/a/l;->a(Ljava/io/File;)Lcom/b/a/d;

    move-result-object v2

    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 58
    :goto_0
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    new-instance v3, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;Lcom/behance/sdk/dto/BehanceSDKImageDTO;)V

    invoke-virtual {v2, v3}, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    if-ne p2, v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 75
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->currentlySelectedPos:I

    if-ne v0, p2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->selectedCover:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->selectedCover:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->selectedCover:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->selectedCover:Ljava/lang/ref/WeakReference;

    .line 92
    :cond_1
    :goto_2
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->orientation:I

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainHeight()V

    .line 96
    :goto_3
    return-void

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/h;->b(Landroid/content/Context;)Lcom/b/a/l;

    move-result-object v2

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v2

    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    goto :goto_0

    .line 73
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_4
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    invoke-virtual {v0, v6, v7}, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->setAspectRatio(D)V

    .line 83
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverThumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_icon_project_editor_cover_add:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$2;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 95
    :cond_5
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;->bsdkCardProjectEditorCoverContainer:Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKAspectRatioRelativeLayout;->constrainWidth()V

    goto :goto_3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorCoverStripRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_cover_strip:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorCoverStripItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
