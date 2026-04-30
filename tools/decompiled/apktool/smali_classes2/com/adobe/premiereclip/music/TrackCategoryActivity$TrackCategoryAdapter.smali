.class public Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TrackCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private categoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/music/TrackCategoryActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->categoryList:Ljava/util/ArrayList;

    .line 141
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->categoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private disableCategoryView(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 183
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 184
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->mCategoryView:Landroid/widget/LinearLayout;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 185
    return-void
.end method

.method private enableCategoryView(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 178
    iget-object v0, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->mCategoryView:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 179
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->categoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 136
    check-cast p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;I)V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->mCategoryName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->categoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->categoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->access$000(Lcom/adobe/premiereclip/music/TrackCategoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0453

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->disableCategoryView(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->access$100(Lcom/adobe/premiereclip/music/TrackCategoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    .line 166
    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a036f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->this$0:Lcom/adobe/premiereclip/music/TrackCategoryActivity;

    .line 167
    invoke-virtual {v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :cond_2
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->disableCategoryView(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->enableCategoryView(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040183

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;-><init>(Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;Landroid/view/View;)V

    .line 154
    iget-object v0, v1, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter$ViewHolder;->mCategoryName:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 155
    return-object v1
.end method
