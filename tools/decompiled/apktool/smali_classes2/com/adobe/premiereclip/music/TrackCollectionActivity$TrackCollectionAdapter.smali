.class public Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TrackCollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private collectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/music/SongCollection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/music/TrackCollectionActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/music/TrackCollectionActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/music/SongCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCollectionActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->collectionList:Ljava/util/ArrayList;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->collectionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private disableCollectionView(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionLayout:Landroid/widget/RelativeLayout;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 175
    return-void
.end method

.method private enableCollectionView(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 168
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 169
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->collectionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;I)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->collectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/music/SongCollection;

    .line 156
    iget-object v1, p1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/SongCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/SongCollection;->getSongCount()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->disableCollectionView(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->enableCollectionView(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040184

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;Landroid/view/View;)V

    .line 149
    iget-object v0, v1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 150
    return-object v1
.end method
