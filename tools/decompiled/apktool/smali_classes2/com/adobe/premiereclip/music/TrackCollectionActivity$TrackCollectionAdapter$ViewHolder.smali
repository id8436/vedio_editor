.class public Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrackCollectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCollectionLayout:Landroid/widget/RelativeLayout;

.field public mCollectionName:Landroid/widget/TextView;

.field public mCollectionView:Landroid/view/View;

.field final synthetic this$1:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    .line 182
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 183
    invoke-static {p2}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 184
    iput-object p2, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionView:Landroid/view/View;

    .line 185
    const v0, 0x7f120606

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionLayout:Landroid/widget/RelativeLayout;

    .line 186
    const v0, 0x7f120608

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->mCollectionName:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->access$000(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/music/SongCollection;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/SongCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->access$000(Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/music/SongCollection;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/music/SongCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCollectionActivity;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->openTrackActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method
