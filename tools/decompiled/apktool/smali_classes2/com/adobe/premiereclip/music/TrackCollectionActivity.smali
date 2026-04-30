.class public Lcom/adobe/premiereclip/music/TrackCollectionActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "TrackCollectionActivity.java"


# instance fields
.field private TRACKS_REQUEST:I

.field private mAdapter:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

.field private mCategory:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mProjKey:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    .line 48
    const v0, 0x18788

    iput v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->TRACKS_REQUEST:I

    return-void
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->onBackPressed()V

    .line 101
    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    if-ne p2, v2, :cond_0

    .line 107
    if-eqz p3, :cond_0

    .line 108
    const-string/jumbo v0, "track_selected"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0, v2, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->onBackPressed()V

    .line 118
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onBackPressed()V

    .line 96
    const v0, 0x7f05002d

    const v1, 0x7f05002e

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->overridePendingTransition(II)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 56
    const v0, 0x7f120169

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 58
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    const v0, 0x7f120168

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mTitle:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mCategory:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a036e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getAllAlbumsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    new-instance v1, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;-><init>(Lcom/adobe/premiereclip/music/TrackCollectionActivity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    .line 75
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mAdapter:Lcom/adobe/premiereclip/music/TrackCollectionActivity$TrackCollectionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "project_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mProjKey:Ljava/lang/String;

    .line 79
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a036f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getAllArtistsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0453

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/adobe/premiereclip/music/SoundTrackManager;->getAllPlaylistsinMediaStore(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 90
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 91
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 84
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method public openTrackActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/premiereclip/music/TrackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string/jumbo v1, "project_key"

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mProjKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget v1, p0, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->TRACKS_REQUEST:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 127
    const v0, 0x7f05002b

    const v1, 0x7f05002c

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/music/TrackCollectionActivity;->overridePendingTransition(II)V

    .line 128
    return-void
.end method
