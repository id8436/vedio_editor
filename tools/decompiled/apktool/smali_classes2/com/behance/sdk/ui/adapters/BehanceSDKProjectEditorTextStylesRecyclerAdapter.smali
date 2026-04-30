.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectEditorTextStylesRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;

.field private context:Landroid/content/Context;

.field private selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 26
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->callback:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->callback:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$TextStyleCallback;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;I)V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->values()[Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    move-result-object v0

    aget-object v1, v0, p2

    .line 37
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;->bsdkCardProjectEditorStyleTextLeft:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->getDisplayStringResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 38
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;->bsdkCardProjectEditorStyleSelected:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;->bsdkCardProjectEditorStyleContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void

    .line 38
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextStylesRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_style_detail:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleDetailItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
