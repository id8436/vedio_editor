.class public Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;
.super Lcom/adobe/premiereclip/editor/TopOfEditorActivity;
.source "DCXSyncStatusActivity.java"


# instance fields
.field private dcxSyncStatusAdapter:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

.field private dcxSyncStatusRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private restrictedCompositeId:Ljava/lang/String;

.field private syncTable:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->restrictedCompositeId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusAdapter:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    return-object v0
.end method

.method private getCompositeSyncTableListener()Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$1;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;)V

    return-object v0
.end method


# virtual methods
.method public final closeAndGoBack(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->syncTable:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->stopTimer()V

    .line 82
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->onBackPressed()V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lcom/h/a/d;->a(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "restrictedCompositeId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "restrictedCompositeId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->restrictedCompositeId:Ljava/lang/String;

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->getCompositeSyncTableListener()Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->restrictedCompositeId:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;-><init>(Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable$Listener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->syncTable:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    .line 60
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 61
    const v0, 0x7f120100

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->syncTable:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->getTableItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;-><init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusAdapter:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    .line 65
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->dcxSyncStatusAdapter:Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity$DCXSyncStatusAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusActivity;->syncTable:Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXCompositeSyncTable;->unSetProjectsSyncStatusListener()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onPause()V

    .line 77
    invoke-static {}, Lcom/adobe/mobile/Config;->pauseCollectingLifecycleData()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/TopOfEditorActivity;->onResume()V

    .line 71
    invoke-static {p0}, Lcom/adobe/mobile/Config;->collectLifecycleData(Landroid/app/Activity;)V

    .line 72
    return-void
.end method
