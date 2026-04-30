.class public Lcom/adobe/premiereclip/music/TrackCategoryActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "TrackCategoryActivity.java"


# instance fields
.field private TRACKCOLLECTION_REQUEST:I

.field private mAdapter:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mProjKey:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private noPlaylists:Z

.field private noSongs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    .line 50
    const v0, 0x18a7d

    iput v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->TRACKCOLLECTION_REQUEST:I

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/music/TrackCategoryActivity;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->noPlaylists:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/music/TrackCategoryActivity;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->noSongs:Z

    return v0
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->onBackPressed()V

    .line 99
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    if-ne p2, v2, :cond_0

    .line 123
    if-eqz p3, :cond_0

    .line 124
    const-string/jumbo v0, "track_selected"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0, v2, v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->onBackPressed()V

    .line 134
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 94
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->overridePendingTransition(II)V

    .line 95
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 57
    const v0, 0x7f120167

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a03e9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0453

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a036e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a036f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a04d4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getAllPlaylistsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->noPlaylists:Z

    .line 70
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getAllSongsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->noSongs:Z

    .line 73
    new-instance v0, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    invoke-direct {v0, p0, v3}, Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;-><init>(Lcom/adobe/premiereclip/music/TrackCategoryActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackCategoryActivity$TrackCategoryAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 76
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mProjKey:Ljava/lang/String;

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v1, v2

    .line 71
    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 88
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 82
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public openTrackActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mProjKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "id"

    const-string/jumbo v2, "all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->TRACKCOLLECTION_REQUEST:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->overridePendingTransition(II)V

    .line 117
    return-void
.end method

.method public final openTrackCollectionActivity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/music/TrackCollectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->mProjKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget v1, p0, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->TRACKCOLLECTION_REQUEST:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCategoryActivity;->overridePendingTransition(II)V

    .line 107
    return-void
.end method
