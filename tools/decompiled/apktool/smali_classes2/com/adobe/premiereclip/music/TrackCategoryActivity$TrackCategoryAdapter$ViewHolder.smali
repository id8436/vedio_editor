.class public Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TrackCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCategoryName:Landroid/widget/TextView;

.field public mCategoryView:Landroid/widget/LinearLayout;

.field final synthetic this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    .line 191
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    invoke-static {p2}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 193
    const v0, 0x7f120604

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->mCategoryView:Landroid/widget/LinearLayout;

    .line 194
    const v0, 0x7f120605

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->mCategoryName:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v2, 0x7f0a0453

    const v4, 0x7f0a04d4

    const v3, 0x7f0a03e9

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->access$200(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    .line 204
    invoke-virtual {v2}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->openTrackActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->openTrackCollectionActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->openTrackCollectionActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a036f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->openTrackCollectionActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v0, v0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v1, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    iget-object v2, v2, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    .line 217
    invoke-virtual {v2}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->openTrackActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
