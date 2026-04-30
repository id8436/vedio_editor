.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHARE_PROJECT_ITEM_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "SHARE_PROJECT_ITEM_DIALOG_FRAGMENT_TAG"


# instance fields
.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private cleanFeed:Z

.field private columns:I

.field private context:Landroid/content/Context;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private itemAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private loggedInUserId:I

.field private moreToLoad:Z

.field private projects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
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
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->moreToLoad:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->loggedInUserId:I

    .line 49
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    .line 51
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 53
    invoke-static {p1}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getActivityColumnCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->columns:I

    .line 54
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->loggedInUserId:I

    .line 61
    :cond_0
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->columns:I

    invoke-static {p1, v0}, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->getInstance(Landroid/content/Context;I)Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->itemAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;)Lcom/behance/sdk/BehanceSDK;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->displayShareProjectView(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    return-void
.end method

.method private cloneProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "pretend it\'s now private..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    return-void
.end method

.method private deleteProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "pretend project has been deleted..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    return-void
.end method

.method private displayShareProjectView(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method private editProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "pretend it\'s been renamed..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    return-void
.end method

.method private getBasicItemCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private unpublishProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "pretend project unpublished..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method


# virtual methods
.method public addProjectsItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->getBasicItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->getBasicItemCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectItem(I)Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;I)V
    .locals 7

    .prologue
    const/16 v6, 0x194

    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->getBasicItemCount()I

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 78
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->moreToLoad:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->itemAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1, p2, v5}, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->setAnimation(Landroid/view/View;IZ)V

    .line 166
    :goto_1
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->cleanFeed:Z

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 83
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->appreciationsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_2
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 92
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 94
    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v1

    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->loggedInUserId:I

    if-ne v1, v4, :cond_2

    .line 131
    :cond_3
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 133
    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_4
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->cover:Lcom/facebook/drawee/view/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->findCoverImageInIncreasingSizeOrderAndFallback(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 136
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->findCoverImageInIncreasingSizeOrderAndFallback(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/l/d;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/imagepipeline/l/d;->a(Z)Lcom/facebook/imagepipeline/l/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/l/d;->n()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    .line 137
    invoke-static {}, Lcom/facebook/drawee/a/a/c;->a()Lcom/facebook/drawee/a/a/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/facebook/drawee/a/a/f;->b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/a/a/f;

    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->cover:Lcom/facebook/drawee/view/d;

    invoke-virtual {v3}, Lcom/facebook/drawee/view/d;->getController()Lcom/facebook/drawee/h/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/a/a/f;->a(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/c/d;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v1}, Lcom/facebook/drawee/a/a/f;->k()Lcom/facebook/drawee/c/a;

    move-result-object v1

    .line 138
    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->cover:Lcom/facebook/drawee/view/d;

    invoke-virtual {v3, v1}, Lcom/facebook/drawee/view/d;->setController(Lcom/facebook/drawee/h/a;)V

    .line 141
    :cond_5
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "###,###,###,###"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 143
    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->appreciations:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getAppreciationsCount()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->views:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getViewsCount()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_6
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    new-instance v3, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    new-instance v3, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/CardView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->itemAnimator:Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1, p2, v2}, Lcom/behance/sdk/ui/animations/BehanceSDKRecyclerItemAnimator;->setAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 86
    :cond_7
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->title:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 87
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->appreciationsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->artist:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_card_view_loader:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$layout;->bsdk_card_view_project:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->onViewDetachedFromWindow(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;)V
    .locals 2

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->clearAnimation()V

    .line 189
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectViewHolder;->card:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTranslationY(F)V

    .line 191
    :cond_0
    return-void
.end method

.method public setMoreToLoad(Z)V
    .locals 1

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->moreToLoad:Z

    .line 215
    invoke-direct {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->getBasicItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->notifyItemChanged(I)V

    .line 216
    return-void
.end method

.method public setProjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->projects:Ljava/util/List;

    .line 195
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method
