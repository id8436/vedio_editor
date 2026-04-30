.class public Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKProjectsFeedFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;
.implements Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;


# static fields
.field public static final DISCOVER_PROJECTS_KEY_SELECTED_FILTERS:Ljava/lang/String; = "DISCOVER_PROJECTS_KEY_SELECTED_FILTERS"

.field public static final PROJECT_FEED_GALLERY_ID:Ljava/lang/String; = "PROJECT_FEED_GALLERY_ID"

.field public static final PROJECT_FEED_GALLERY_TYPE:Ljava/lang/String; = "PROJECT_FEED_GALLERY_TYPE"

.field public static final PROJECT_FEED_TYPE:Ljava/lang/String; = "PROJECT_FEED_TYPE"

.field private static final STATE_LOADED_PROJECTS_PAGE_NUMBER:Ljava/lang/String; = "STATE_LOADED_PAGE_NUMBER"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field protected emptyStatesView:Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

.field private galleryID:I

.field private galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

.field private getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

.field private isProjectTypeGallery:Z

.field private lastLoadedProjectsPageNumber:I

.field private projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

.field private projectsLoadingInProgress:Z

.field private projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

.field private projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private rootView:Landroid/view/View;

.field private selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 83
    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    .line 98
    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isProjectTypeGallery:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;)Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    return-object v0
.end method

.method private hideProgressBar(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsLoadingInProgress:Z

    .line 350
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 351
    return-void
.end method

.method private loadDiscoverProjectsFromServer(Z)V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isDeviceOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsLoadingInProgress:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 251
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    .line 252
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getAsyncTaskParams()Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 254
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->loadProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 255
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->showProgressBar()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    goto :goto_0
.end method

.method private loadGalleriesProjectsFromServer(Z)V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isDeviceOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsLoadingInProgress:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    .line 264
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getGalleriesAsyncTaskParams()Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    move-result-object v0

    .line 265
    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->galleryID:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->setCuratedGalleryId(I)V

    .line 266
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->setGalleryType(Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;)V

    .line 267
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->loadGalleryProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    .line 268
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->showProgressBar()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    goto :goto_0
.end method

.method private loadNextPageGalleryProjectsFromServer()V
    .locals 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsLoadingInProgress:Z

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    .line 324
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getGalleriesAsyncTaskParams()Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->loadGalleryProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    .line 328
    :cond_0
    return-void
.end method

.method private loadNextPageProjectsFromServer()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsLoadingInProgress:Z

    if-nez v0, :cond_0

    .line 314
    iget v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    .line 315
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getAsyncTaskParams()Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->loadProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 319
    :cond_0
    return-void
.end method

.method private setFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->getSortOption()Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setSortOption(Lcom/behance/sdk/enums/BehanceSDKProjectsSortOption;)V

    .line 291
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->getCreativeFieldDTO()Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    const-string/jumbo v1, "ALL_CREATIVE_FIELDS_ID"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setFieldId(Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setSearchString(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setLocationFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 297
    return-void
.end method

.method private setLocationFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->getCountryDTO()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_1

    const-string/jumbo v1, "WORLD_WIDE_COUNTRY_ID"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setCountry(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->getStateDTO()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    const-string/jumbo v1, "ALL_STATES_ID"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setState(Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;->getCityDTO()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_1

    const-string/jumbo v1, "ALL_CITIES_ID"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setCity(Ljava/lang/String;)V

    .line 310
    :cond_1
    return-void
.end method

.method private setProjectsRecyclerAdapter(Z)V
    .locals 4

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsList()Ljava/util/List;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_0

    .line 432
    if-eqz p1, :cond_2

    .line 433
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 434
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->resetScrollCount()V

    .line 450
    :cond_0
    :goto_1
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 441
    instance-of v2, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    if-eqz v2, :cond_3

    .line 442
    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    .line 443
    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->setProjects(Ljava/util/List;)V

    goto :goto_1

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1
.end method

.method private showProgressBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 344
    iput-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsLoadingInProgress:Z

    .line 345
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 346
    return-void
.end method


# virtual methods
.method protected getAsyncTaskParams()Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;-><init>()V

    .line 277
    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setPageNumber(I)V

    .line 278
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->setPageSize(I)V

    .line 279
    return-object v0
.end method

.method public getBundleToSave()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    const-string/jumbo v1, "STATE_LOADED_PAGE_NUMBER"

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    iget-boolean v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isProjectTypeGallery:Z

    if-eqz v1, :cond_0

    .line 366
    const-string/jumbo v1, "PROJECT_FEED_GALLERY_ID"

    iget v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->galleryID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    const-string/jumbo v1, "PROJECT_FEED_GALLERY_TYPE"

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 369
    :cond_0
    const-string/jumbo v1, "DISCOVER_PROJECTS_KEY_SELECTED_FILTERS"

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 370
    return-object v0
.end method

.method protected getGalleriesAsyncTaskParams()Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;-><init>()V

    .line 284
    iget v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->setPageNumber(I)V

    .line 285
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->setPageSize(I)V

    .line 286
    return-object v0
.end method

.method protected getHeadlessFragment()Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    return-object v0
.end method

.method protected getHeadlessFragmentNewInstance()Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;-><init>()V

    return-object v0
.end method

.method public getHeadlessFragmentTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string/jumbo v0, "HEADLESS_FRAGMENT_TAG_GET_PROJECTS"

    return-object v0
.end method

.method protected getProjectsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isDeviceOnline()Z
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 233
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadNextPage()V
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isProjectTypeGallery:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadNextPageGalleryProjectsFromServer()V

    .line 463
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadNextPageProjectsFromServer()V

    goto :goto_0
.end method

.method protected loadProjects()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadProjectsFromServer()V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setProjectsRecyclerAdapter(Z)V

    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    goto :goto_0
.end method

.method protected loadProjectsFromServer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isProjectTypeGallery:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadGalleriesProjectsFromServer(Z)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadDiscoverProjectsFromServer(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 114
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_fragment_projects_feed:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->rootView:Landroid/view/View;

    .line 116
    invoke-static {}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getInstance()Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    .line 117
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getHeadlessFragmentTag()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    .line 119
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getHeadlessFragmentNewInstance()Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    .line 121
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getHeadlessFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;)V

    .line 125
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_discoverProjectsEmptyStatesView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->emptyStatesView:Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

    .line 128
    if-nez p3, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    .line 132
    :cond_1
    new-instance v0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    invoke-direct {v0}, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    .line 133
    if-eqz p3, :cond_2

    .line 134
    const-string/jumbo v0, "STATE_LOADED_PAGE_NUMBER"

    invoke-virtual {p3, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->lastLoadedProjectsPageNumber:I

    .line 135
    const-string/jumbo v0, "PROJECT_FEED_TYPE"

    invoke-virtual {p3, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isProjectTypeGallery:Z

    .line 136
    iget-boolean v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->isProjectTypeGallery:Z

    if-eqz v0, :cond_3

    .line 137
    const-string/jumbo v0, "PROJECT_FEED_GALLERY_TYPE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->galleryType:Lcom/behance/sdk/enums/BehanceSDKCuratedGalleryType;

    .line 138
    const-string/jumbo v0, "PROJECT_FEED_GALLERY_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->galleryID:I

    .line 146
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdk_discoverProjectsSwipeRefresh:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 150
    sget v0, Lcom/behance/sdk/R$dimen;->bsdk_toolbar_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_status_bar_spacer:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lcom/behance/sdk/R$dimen;->bsdk_card_view_vertical_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    neg-int v2, v0

    invoke-virtual {v1, v6, v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 152
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v3, [I

    sget v2, Lcom/behance/sdk/R$color;->bsdk_behance_blue:I

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 154
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_discoverProjectsRecycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    .line 155
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKColumnCountUtil;->getDiscoverProjectColumnCount(Landroid/content/Context;)I

    move-result v0

    .line 156
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 157
    new-instance v2, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment$1;-><init>(Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    new-instance v2, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/behance/sdk/ui/decorators/BehanceSDKSpaceItemDecorationGrid;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 174
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setCallbackListener(Lcom/behance/sdk/listeners/IBehanceSDKEndlessScrollRecyclerViewListener;)V

    .line 175
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->initializeScrollListener(Landroid/support/v7/widget/LinearLayoutManager;)V

    .line 176
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    iget-object v1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v1}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v2}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v3}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v4}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/behance/sdk/util/BehanceSDKUtils;->getTranslucentNavHeight(Landroid/app/Activity;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->setPadding(IIII)V

    .line 178
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->isGetProjectsAsyncTaskInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    invoke-direct {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->showProgressBar()V

    .line 180
    invoke-direct {p0, v6}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setProjectsRecyclerAdapter(Z)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->rootView:Landroid/view/View;

    return-object v0

    .line 140
    :cond_3
    const-string/jumbo v0, "DISCOVER_PROJECTS_KEY_SELECTED_FILTERS"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    .line 141
    if-eqz v0, :cond_2

    .line 142
    iput-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->selectedFilters:Lcom/behance/sdk/dto/search/BehanceSDKProjectFiltersSelected;

    goto/16 :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadProjects()V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 337
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 338
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getProjectsHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 393
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem getting Projects from server"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_collection_details_view_loading_projects_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    :cond_0
    return-void
.end method

.method public onGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    sget-object v0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem getting Projects from server"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-direct {p0, v3}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    .line 422
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_collection_details_view_loading_projects_error_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 425
    :cond_0
    return-void
.end method

.method public onGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setProjectsRecyclerAdapter(Z)V

    .line 377
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    .line 379
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->emptyStatesView:Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setVisibility(I)V

    .line 389
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 375
    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 382
    instance-of v3, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    if-eqz v3, :cond_2

    .line 383
    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->setMoreToLoad(Z)V

    .line 384
    :cond_2
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 385
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->emptyStatesView:Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setVisibility(I)V

    .line 387
    :cond_3
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    goto :goto_1
.end method

.method public onGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->setProjectsRecyclerAdapter(Z)V

    .line 404
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-direct {p0, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    .line 406
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->emptyStatesView:Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setVisibility(I)V

    .line 416
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 402
    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsRecyclerView:Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/components/BehanceSDKEndlessScrollRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 409
    instance-of v3, v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    if-eqz v3, :cond_2

    .line 410
    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectRecyclerViewAdapter;->setMoreToLoad(Z)V

    .line 411
    :cond_2
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getPageNumber()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 412
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->emptyStatesView:Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKEmptyStatesView;->setVisibility(I)V

    .line 414
    :cond_3
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->hideProgressBar(Z)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 197
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->loadProjectsFromServer()V

    .line 455
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 192
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    invoke-virtual {p0}, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->getBundleToSave()Landroid/os/Bundle;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 214
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKProjectsFeedFragment;->projectsSwipeRefresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 215
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 333
    return-void
.end method
