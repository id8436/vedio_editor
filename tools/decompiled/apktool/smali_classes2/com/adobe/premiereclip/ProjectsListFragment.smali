.class public Lcom/adobe/premiereclip/ProjectsListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProjectsListFragment.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;


# instance fields
.field private mAdapter:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private popupOptionsDrawableIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private projectPosterHeight:I

.field private projectPosterWidth:I

.field private projectViewMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/adobe/premiereclip/ProjectsListFragment;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/ProjectsListFragment;->getStringWrapped(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectViewMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/ProjectsListFragment;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->showUnableToOpenProjectDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/ProjectsListFragment;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectPosterHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/ProjectsListFragment;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectPosterWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/ProjectsListFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/ProjectsListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getStringWrapped(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    :cond_0
    const-string/jumbo v0, ""

    .line 618
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance()Lcom/adobe/premiereclip/ProjectsListFragment;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment;

    invoke-direct {v0}, Lcom/adobe/premiereclip/ProjectsListFragment;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/ProjectsListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v0
.end method

.method private setProjectUpdateListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setProjectsUpdateListiner(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;)V

    .line 104
    return-void
.end method

.method private showUnableToOpenProjectDialog()V
    .locals 5

    .prologue
    .line 622
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    .line 623
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 624
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0447

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0446

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 627
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 629
    return-void
.end method


# virtual methods
.method public handleProjectViewMessageText()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 593
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v3

    .line 594
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 595
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    const-string/jumbo v4, "preferences"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 597
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushesOrPullsExist(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 599
    :cond_0
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v1, "ProjectsListFragment setting syncing text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->showProjectDownloadingText()V

    .line 611
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 595
    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->removeProjectViewMessageText()V

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    .line 606
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->showNoProjectCreatedText()V

    goto :goto_1

    .line 608
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->removeProjectViewMessageText()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    const v0, 0x7f040131

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 123
    const v0, 0x7f120500

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 124
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v2, v5, [I

    const v3, 0x7f1101a3

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/adobe/premiereclip/ProjectsListFragment$2;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$2;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 131
    const v0, 0x7f120501

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 134
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 137
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 143
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getSharedAuthManager()Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeUXAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v2

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initalize(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeSync()V

    .line 150
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->getProjectListFromDCX()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mAdapter:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    .line 152
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mAdapter:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 154
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 155
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 157
    iget v0, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c02dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectPosterWidth:I

    .line 158
    iget v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectPosterWidth:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectPosterHeight:I

    .line 160
    const v0, 0x7f1204ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectViewMessage:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->projectViewMessage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 163
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->showNoProjectCreatedText()V

    .line 170
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    .line 171
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    const v2, 0x7f0202b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->popupOptionsDrawableIdList:Ljava/util/ArrayList;

    const v2, 0x7f0202ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-object v1

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->removeProjectViewMessageText()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 178
    const-string/jumbo v0, "ActivityLifeCycle"

    const-string/jumbo v1, "onStart of ProjectListFragment called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 180
    invoke-direct {p0, p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->setProjectUpdateListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;)V

    .line 188
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    const-string/jumbo v1, "logout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/ProjectsListFragment$3;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$3;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    .line 200
    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment$3;->start()V

    .line 202
    iget-object v0, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mAdapter:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/ProjectsListFragment;->setProjectUpdateListener(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerEventReceiver;)V

    .line 209
    return-void
.end method

.method public projectsUpdated()V
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->getProjectListFromDCX()Ljava/util/ArrayList;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mAdapter:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    if-nez v1, :cond_0

    .line 537
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/ProjectsListFragment;->mAdapter:Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/ProjectsListFragment$ProjectsListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 534
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setMyProjectsCount(I)V

    .line 536
    const-string/jumbo v0, "MainActivity"

    const-string/jumbo v1, "projects updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshContent()V
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->forceSync()V

    .line 110
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$1;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method public removeProjectViewMessageText()V
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 579
    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 580
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$6;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$6;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showLowDiskSpaceAlert()V
    .locals 5

    .prologue
    .line 541
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    .line 542
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 543
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0425

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0426

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 546
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 547
    return-void
.end method

.method public showNoProjectCreatedText()V
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 565
    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 566
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$5;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$5;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showProjectDownloadingText()V
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/adobe/premiereclip/ProjectsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 551
    if-nez v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/ProjectsListFragment$4;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/ProjectsListFragment$4;-><init>(Lcom/adobe/premiereclip/ProjectsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
