.class Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;

.field private sourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->sourceNames:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->sourceNames:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iput-object p3, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->listener:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;

    .line 30
    iput-object p1, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;)Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->listener:Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->sourceNames:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->sourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;I)V
    .locals 3

    .prologue
    .line 48
    iget-object v1, p1, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->sourceName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->sourceNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;->getSourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040185

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;-><init>(Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter;Landroid/view/View;)V

    .line 42
    iget-object v0, v1, Lcom/adobe/premiereclip/mediabrowser/SourceListAdapter$SourceViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 43
    return-object v1
.end method
