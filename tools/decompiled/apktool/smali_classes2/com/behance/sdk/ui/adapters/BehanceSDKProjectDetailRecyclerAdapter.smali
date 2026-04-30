.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectDetailRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_APPRECIATE_VIEW:I = 0x2

.field private static final ITEM_TYPE_COMMENT:I = 0x6

.field private static final ITEM_TYPE_COMMENT_HEADER:I = 0x3

.field private static final ITEM_TYPE_COMMENT_PLACEHOLDER:I = 0x5

.field private static final ITEM_TYPE_HEADER_PADDING:I = 0x0

.field private static final ITEM_TYPE_INFO_SHARE_VIEW:I = 0x4

.field private static final ITEM_TYPE_LOADER:I = 0x7

.field private static final ITEM_TYPE_PROJECT_MODULE:I = 0x1

.field private static final PROJECT_CAPTION_TOP_SPACING:I = 0x10

.field private static final PROJECT_TEXT_MAX_SCALE:D = 1.5

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private bgColor:I

.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

.field private commentsAllowed:Z

.field private commentsCount:I

.field private context:Landroid/content/Context;

.field private displayWidth:D

.field private headerHeight:I

.field private loggedInUserId:I

.field private moreToLoad:Z

.field private ownedByLoggedInUser:Z

.field private projectAppreciated:Z

.field private projectComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;"
        }
    .end annotation
.end field

.field private projectModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;",
            ">;"
        }
    .end annotation
.end field

.field private scaleFactor:D

.field private styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

.field private webViewHeights:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 86
    iput-boolean v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->moreToLoad:Z

    .line 88
    iput-boolean v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->ownedByLoggedInUser:Z

    .line 107
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getModules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    .line 109
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    .line 110
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->loggedInUserId:I

    .line 115
    :goto_0
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 116
    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v0

    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->loggedInUserId:I

    if-ne v0, v3, :cond_0

    .line 117
    iput-boolean v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->ownedByLoggedInUser:Z

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    .line 122
    iget-wide v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    const-wide v4, 0x4086a80000000000L    # 725.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->scaleFactor:D

    .line 123
    const/16 v0, 0x64

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->headerHeight:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    .line 125
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getCommentsCount()I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    .line 126
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isAllowComments()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsAllowed:Z

    .line 127
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/behance/sdk/R$color;->bsdk_transparent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->bgColor:I

    .line 132
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isAppreciatedByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectAppreciated:Z

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    move v0, v1

    .line 136
    :goto_1
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_2
    iput v6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->loggedInUserId:I

    goto/16 :goto_0

    .line 139
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectAppreciated:Z

    return p1
.end method

.method private addCaptionSpacer(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    .line 408
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->scaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 412
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 413
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    return-void
.end method

.method private addDividerSpacer(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;I)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 417
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getDividerCSS()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getModuleMarginBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 420
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 422
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getModuleMarginBottom()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->scaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 423
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 424
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 428
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 429
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 430
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 432
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getModuleMarginBottom()I

    move-result v1

    int-to-double v4, v1

    iget-wide v6, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->scaleFactor:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 433
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 434
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    const-string/jumbo v1, "<p class=\"divider\"></p>"

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getDividerCSS()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeTextModule(Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;DI)V

    goto :goto_0
.end method

.method private findImageNumFromModuleNum(I)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 277
    move v1, v2

    move v3, v2

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    .line 280
    instance-of v0, v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    if-eqz v0, :cond_1

    .line 281
    if-ne v1, p1, :cond_0

    .line 287
    :goto_1
    return v3

    .line 284
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 278
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    .line 287
    goto :goto_1
.end method

.method private getFormattedDate(J)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 562
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_wip_details_view_posted_on_date_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 564
    if-nez v0, :cond_0

    .line 565
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object v1, v0

    .line 569
    :goto_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 570
    mul-long v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 580
    :goto_1
    return-object v0

    .line 571
    :catch_0
    move-exception v0

    .line 573
    :try_start_1
    const-string/jumbo v2, "MMM d hh:mm aaa"

    .line 574
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 575
    mul-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 576
    :catch_1
    move-exception v2

    .line 577
    sget-object v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Comments View date formatting error with locale %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private makeCommentsHeader(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 478
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsAllowed:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;->commentHeaderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "###,###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_detail_fragment_comments_header_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    int-to-double v4, v4

    .line 482
    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 481
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;->commentsHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;->commentHeaderContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private makeImageModule(Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;Landroid/widget/LinearLayout;I)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 244
    new-instance v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 245
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 246
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->isFullBleed()Z

    move-result v2

    .line 249
    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    .line 250
    :goto_0
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getWidth()I

    move-result v4

    int-to-double v4, v4

    .line 251
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getHeight()I

    move-result v6

    int-to-double v6, v6

    .line 252
    div-double v4, v6, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 253
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 255
    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/h/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/f/a;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$color;->bsdk_project_image_bg_overlay:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/f/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getHDSrcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/l/d;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/facebook/imagepipeline/l/d;->a(Z)Lcom/facebook/imagepipeline/l/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/d;->n()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getSrcUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/imagepipeline/l/d;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/facebook/imagepipeline/l/d;->a(Z)Lcom/facebook/imagepipeline/l/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/l/d;->n()Lcom/facebook/imagepipeline/l/a;

    move-result-object v2

    .line 258
    invoke-static {}, Lcom/facebook/drawee/a/a/c;->a()Lcom/facebook/drawee/a/a/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/facebook/drawee/a/a/f;->b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/a/a/f;->c(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/h/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/a/a/f;->a(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/c/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v0, v8}, Lcom/facebook/drawee/a/a/f;->a(Z)Lcom/facebook/drawee/c/d;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v0}, Lcom/facebook/drawee/a/a/f;->k()Lcom/facebook/drawee/c/a;

    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/h/a;)V

    .line 261
    new-instance v0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$3;

    invoke-direct {v0, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$3;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)V

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getCaptionFormattedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getCaptionFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->addCaptionSpacer(Landroid/widget/LinearLayout;)V

    .line 271
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getCaptionFormattedText()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getCustomCSS()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    move-object v0, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeTextModule(Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;DI)V

    .line 274
    :cond_0
    return-void

    .line 249
    :cond_1
    iget-wide v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4086a80000000000L    # 725.0

    div-double/2addr v2, v4

    goto/16 :goto_0
.end method

.method private makeTextModule(Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;DI)V
    .locals 8

    .prologue
    .line 291
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 294
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 295
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 297
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 298
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 299
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->scaleFactor:D

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<html><head><meta name=\"viewport\" content=\"width=725, maximum-scale=3.059\"/><style type=\"text/css\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</style></head><body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 310
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 313
    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, p4

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 314
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    invoke-virtual {v1, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    .line 317
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;

    invoke-direct {v1, p0, p6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$4;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 340
    :goto_0
    const/4 v1, 0x0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    invoke-virtual {v1, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_0
.end method

.method private makeWVModule(Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;Landroid/widget/LinearLayout;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 344
    .line 345
    instance-of v0, p1, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 346
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getEmbedHTML()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 351
    :goto_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 354
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 355
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 356
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 357
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 358
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<html><head><meta name=\"viewport\" content=\"width=725, maximum-scale=3.059\"/></head><body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    iget v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->bgColor:I

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 366
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 369
    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 370
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    .line 373
    new-instance v3, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$5;

    invoke-direct {v3, p0, p3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$5;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 396
    :goto_1
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    instance-of v0, p1, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;

    if-eqz v0, :cond_0

    .line 399
    check-cast p1, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;

    .line 400
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getCaptionFormattedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getCaptionFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->addCaptionSpacer(Landroid/widget/LinearLayout;)V

    .line 402
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleEmbedDTO;->getCaptionFormattedText()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getCustomCSS()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    move-object v0, p0

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeTextModule(Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;DI)V

    .line 405
    :cond_0
    return-void

    .line 347
    :cond_1
    instance-of v0, p1, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 348
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleAudioDTO;->getEmbedHTML()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    .line 349
    :cond_2
    instance-of v0, p1, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 350
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleVideoDTO;->getEmbedHTML()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    .line 393
    :cond_3
    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->webViewHeights:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto/16 :goto_0
.end method

.method private populateComment(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;I)V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;

    .line 441
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->getUser()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->getCreatedDate()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->getFormattedDate(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :try_start_0
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->getUser()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->findProfileImageInDecreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/l/d;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/l/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/l/d;->a(Z)Lcom/facebook/imagepipeline/l/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/l/d;->n()Lcom/facebook/imagepipeline/l/a;

    move-result-object v1

    .line 446
    invoke-static {}, Lcom/facebook/drawee/a/a/c;->a()Lcom/facebook/drawee/a/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/drawee/a/a/f;->b(Ljava/lang/Object;)Lcom/facebook/drawee/c/d;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/a/a/f;

    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getController()Lcom/facebook/drawee/h/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/a/a/f;->a(Lcom/facebook/drawee/h/a;)Lcom/facebook/drawee/c/d;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/a/a/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/a/a/f;->a(Z)Lcom/facebook/drawee/c/d;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/a/a/f;

    invoke-virtual {v1}, Lcom/facebook/drawee/a/a/f;->k()Lcom/facebook/drawee/c/a;

    move-result-object v1

    .line 447
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/h/a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    iget-boolean v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->ownedByLoggedInUser:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;->getUser()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v1

    iget v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->loggedInUserId:I

    if-ne v1, v2, :cond_1

    .line 452
    :cond_0
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdk_card_project_comment_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;

    invoke-direct {v2, p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$6;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 475
    :cond_1
    return-void

    .line 448
    :catch_0
    move-exception v1

    .line 449
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;->avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setUpAppreciateItem(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;)V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 492
    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectAppreciated:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_project_detail_appreciated_badge_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 494
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateThumb:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->thankYouText:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :goto_0
    return-void

    .line 497
    :cond_0
    sget v0, Lcom/behance/sdk/R$color;->bsdk_behance_blue:I

    .line 500
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 501
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;->appreciateView:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$7;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setupShareInfoItem(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;->infoView:Landroid/widget/TextView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;->shareText:Landroid/widget/TextView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method


# virtual methods
.method public addComments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyDataSetChanged()V

    .line 547
    return-void
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsAllowed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 527
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 529
    const/4 v0, 0x2

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_3

    .line 531
    const/4 v0, 0x4

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    if-ne p1, v0, :cond_4

    .line 533
    const/4 v0, 0x3

    goto :goto_0

    .line 534
    :cond_4
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_6

    .line 535
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    .line 537
    :cond_6
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public getProjectComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    return-object v0
.end method

.method public newCommentPosted(Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;)V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectComments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 551
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemChanged(I)V

    .line 555
    :goto_0
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->commentsCount:I

    .line 556
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemChanged(I)V

    .line 557
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemInserted(I)V

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p2, v0, :cond_5

    .line 169
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;

    .line 171
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 173
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 175
    if-nez p2, :cond_1

    .line 176
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->headerHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    add-int/lit8 v6, p2, -0x1

    .line 181
    if-nez v6, :cond_2

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getProjectMarginTop()I

    move-result v0

    if-lez v0, :cond_2

    .line 182
    new-instance v1, Landroid/view/View;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    iget-object v2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getProjectMarginTop()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->scaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 186
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 187
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    .line 192
    instance-of v1, v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;

    if-eqz v1, :cond_3

    .line 193
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;

    .line 194
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleTextDTO;->getFormattedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->styles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;->getCustomCSS()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->displayWidth:D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeTextModule(Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;DI)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 202
    invoke-direct {p0, p1, v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->addDividerSpacer(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;I)V

    goto :goto_0

    .line 195
    :cond_3
    instance-of v1, v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    if-eqz v1, :cond_4

    .line 196
    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeImageModule(Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;Landroid/widget/LinearLayout;I)V

    goto :goto_1

    .line 198
    :cond_4
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v6}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeWVModule(Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;Landroid/widget/LinearLayout;I)V

    goto :goto_1

    .line 206
    :cond_5
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    if-eqz v0, :cond_6

    .line 207
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setUpAppreciateItem(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;)V

    goto :goto_0

    .line 208
    :cond_6
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;

    if-eqz v0, :cond_7

    .line 209
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;

    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->setupShareInfoItem(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;)V

    goto/16 :goto_0

    .line 210
    :cond_7
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;

    if-eqz v0, :cond_8

    .line 211
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;

    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, -0x4

    invoke-direct {p0, p1, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->populateComment(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;I)V

    goto/16 :goto_0

    .line 212
    :cond_8
    instance-of v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;

    if-eqz v0, :cond_9

    .line 213
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;

    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->makeCommentsHeader(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;)V

    goto/16 :goto_0

    .line 214
    :cond_9
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 215
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdk_card_loader_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->moreToLoad:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/behance/sdk/R$color;->bsdk_card_color_off_white:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 217
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/behance/sdk/util/BehanceSDKUtils;->getTranslucentNavHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/v7/widget/CardView;->setContentPadding(IIII)V

    goto/16 :goto_0

    .line 215
    :cond_a
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    packed-switch p2, :pswitch_data_0

    .line 159
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_project_detail_module:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_loader:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 147
    :pswitch_1
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_project_detail_info_share:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailInfoShareViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 149
    :pswitch_2
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_project_detail_comment:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 151
    :pswitch_3
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_project_detail_comments_placeholder:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailItemViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :pswitch_4
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_project_detail_comments_header:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailCommentsHeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :pswitch_5
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_view_project_detail_appreciate:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectDetailAppreciateViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter$Callbacks;

    .line 590
    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 0

    .prologue
    .line 541
    iput p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->headerHeight:I

    .line 542
    return-void
.end method

.method public setMoreToLoad(Z)V
    .locals 1

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->moreToLoad:Z

    .line 585
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectDetailRecyclerAdapter;->notifyItemChanged(I)V

    .line 586
    return-void
.end method
