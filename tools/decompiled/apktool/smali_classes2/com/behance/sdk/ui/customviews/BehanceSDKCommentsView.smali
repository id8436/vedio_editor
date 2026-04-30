.class public Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;
.super Landroid/widget/LinearLayout;
.source "BehanceSDKCommentsView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;

.field private contextMenuActiveCommentDTO:Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

.field private contextMenuActiveCommentView:Landroid/view/View;

.field private logger:Lcom/behance/sdk/logger/ILogger;

.field private mloader:Lcom/i/a/b/g;

.field private options:Lcom/i/a/b/d;

.field private ownedByUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const-class v0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->logger:Lcom/behance/sdk/logger/ILogger;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->ownedByUser:Z

    .line 72
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->initialize()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const-class v0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->logger:Lcom/behance/sdk/logger/ILogger;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->ownedByUser:Z

    .line 77
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->initialize()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const-class v0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->logger:Lcom/behance/sdk/logger/ILogger;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->ownedByUser:Z

    .line 82
    invoke-direct {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->initialize()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method private createCommentView(Landroid/view/LayoutInflater;Ljava/util/Set;Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 133
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_view_comments_comment_item_adapter:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 134
    sget v0, Lcom/behance/sdk/R$id;->bsdk_commentViewUserNameTxtView:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    sget v1, Lcom/behance/sdk/R$id;->bsdk_commentViewCommentContentTxtView:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    sget v2, Lcom/behance/sdk/R$id;->bsdk_commentViewCommentDateTxtView:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 137
    sget v3, Lcom/behance/sdk/R$id;->bsdk_commentViewUserImageView:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 139
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 140
    invoke-virtual {v4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v5

    .line 144
    if-eqz v5, :cond_0

    .line 145
    invoke-virtual {v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->ownedByUser:Z

    .line 147
    :cond_0
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getUser()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_1

    .line 152
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v5}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const/16 v0, 0x32

    invoke-virtual {v5, v0}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->findProfileImageInIncreasingSizeOrder(I)Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    .line 162
    iget-object v5, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->mloader:Lcom/i/a/b/g;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/search/BehanceSDKImageDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->options:Lcom/i/a/b/d;

    invoke-virtual {v5, v0, v3, v6}, Lcom/i/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/d;)V

    .line 167
    :cond_1
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getCreatedDate()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->getFormattedDate(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_2
    return-object v4
.end method

.method private getFormattedDate(J)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const-wide/16 v6, 0x3e8

    .line 215
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_wip_details_view_posted_on_date_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 217
    if-nez v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "MMM d \'at\' hh:mm aaa"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 221
    :cond_0
    if-nez v0, :cond_1

    .line 222
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 226
    :cond_1
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 227
    mul-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    .line 230
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "MMM d hh:mm aaa"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 231
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 232
    mul-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 233
    :catch_1
    move-exception v2

    .line 234
    iget-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Comments View date formatting error with locale %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->mloader:Lcom/i/a/b/g;

    .line 87
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->getDefaultImageLoaderOptions()Lcom/i/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->options:Lcom/i/a/b/d;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->setOrientation(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public addCommentsToLayout(Ljava/util/List;Ljava/util/List;Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;",
            "Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->callbacks:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;

    .line 179
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 185
    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    .line 189
    invoke-direct {p0, v0, v3, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->createCommentView(Landroid/view/LayoutInflater;Ljava/util/Set;Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)Landroid/view/View;

    move-result-object v1

    .line 190
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    new-instance v0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;

    invoke-direct {v0, p0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$2;-><init>(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public clearComments()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->removeAllViews()V

    .line 210
    return-void
.end method

.method public displayCommentsInLayout(Ljava/util/List;Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;",
            ">;",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            "Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0, p1, v0, p3}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->displayCommentsInLayout(Ljava/util/List;Ljava/util/List;Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;)V

    .line 95
    return-void
.end method

.method public displayCommentsInLayout(Ljava/util/List;Ljava/util/List;Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;",
            "Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p3, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->callbacks:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;

    .line 101
    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 106
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 107
    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    .line 111
    invoke-direct {p0, v0, v3, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->createCommentView(Landroid/view/LayoutInflater;Ljava/util/Set;Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)Landroid/view/View;

    move-result-object v1

    .line 112
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_1
    new-instance v0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$1;

    invoke-direct {v0, p0, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$1;-><init>(Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    if-eqz v0, :cond_0

    .line 249
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 253
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->callbacks:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    .line 259
    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;->getUser()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v2

    invoke-virtual {v1}, Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;->getId()I

    move-result v1

    if-eq v2, v1, :cond_0

    iget-boolean v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->ownedByUser:Z

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    iput-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentDTO:Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    .line 262
    iput-object p2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentView:Landroid/view/View;

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_menu_item_label_delete_comment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v3, v0, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 264
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 268
    :cond_1
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentDTO:Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->callbacks:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->callbacks:Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;

    iget-object v1, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentDTO:Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView$Callbacks;->onDeleteCommentRequested(Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;)V

    .line 274
    iget-object v0, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->removeView(Landroid/view/View;)V

    .line 276
    :cond_0
    iput-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentDTO:Lcom/behance/sdk/dto/project/BehanceSDKAbstractCommentDTO;

    .line 277
    iput-object v2, p0, Lcom/behance/sdk/ui/customviews/BehanceSDKCommentsView;->contextMenuActiveCommentView:Landroid/view/View;

    .line 278
    const/4 v0, 0x1

    return v0
.end method
