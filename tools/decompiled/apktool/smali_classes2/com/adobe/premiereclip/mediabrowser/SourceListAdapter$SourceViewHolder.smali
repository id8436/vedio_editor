.class Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public sourceName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->this$0:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    .line 55
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f120609

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->sourceName:Landroid/widget/TextView;

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->this$0:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;)Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->this$0:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->access$000(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;)Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->this$0:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->access$100(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;->onSourceChanged(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
