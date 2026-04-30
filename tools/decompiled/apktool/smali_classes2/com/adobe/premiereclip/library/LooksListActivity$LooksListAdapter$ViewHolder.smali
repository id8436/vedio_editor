.class public Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LooksListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private holderView:Landroid/view/View;

.field private lookFrame:Landroid/widget/ImageView;

.field private lookLoader:Landroid/widget/ProgressBar;

.field private lookName:Landroid/widget/TextView;

.field private lookThumb:Landroid/widget/ImageView;

.field private mPosition:I

.field final synthetic this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 603
    iput-object p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    .line 604
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->mPosition:I

    .line 605
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iput-object p2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->holderView:Landroid/view/View;

    .line 607
    const v0, 0x7f1205df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookName:Landroid/widget/TextView;

    .line 608
    const v0, 0x7f1205de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookThumb:Landroid/widget/ImageView;

    .line 609
    const v0, 0x7f1205e0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookFrame:Landroid/widget/ImageView;

    .line 610
    const v0, 0x7f1205e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookLoader:Landroid/widget/ProgressBar;

    .line 612
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1900(Lcom/adobe/premiereclip/library/LooksListActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 614
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$2000(Lcom/adobe/premiereclip/library/LooksListActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 616
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$2000(Lcom/adobe/premiereclip/library/LooksListActivity;)I

    move-result v1

    iget-object v2, p1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-static {v2}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$1900(Lcom/adobe/premiereclip/library/LooksListActivity;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 618
    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->holderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookLoader:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookName:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getLookThumb()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->lookThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPositionView()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->mPosition:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->access$2100(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;)I

    move-result v0

    .line 623
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->access$2102(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;I)I

    .line 624
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->this$0:Lcom/adobe/premiereclip/library/LooksListActivity;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/adobe/premiereclip/library/LooksListActivity;->access$2200(Lcom/adobe/premiereclip/library/LooksListActivity;Landroid/view/View;I)V

    .line 626
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    iget-object v2, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->access$2100(Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->notifyItemChanged(I)V

    .line 627
    if-ltz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter;->notifyItemChanged(I)V

    .line 630
    :cond_0
    return-void
.end method

.method public setPositionView(I)V
    .locals 0

    .prologue
    .line 637
    iput p1, p0, Lcom/adobe/premiereclip/library/LooksListActivity$LooksListAdapter$ViewHolder;->mPosition:I

    .line 638
    return-void
.end method
