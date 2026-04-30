.class public final Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
.super Ljava/lang/Object;
.source "AccessMethodLogInfo.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field private adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field private apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

.field private contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

.field private endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

.field private signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object v0
.end method

.method public static adminConsole(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->withTagAndAdminConsole(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static api(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    .prologue
    .line 422
    if-nez p0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->withTagAndApi(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static contentManager(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    .prologue
    .line 324
    if-nez p0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->withTagAndContentManager(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static endUser(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->withTagAndEndUser(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static signInAs(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 2

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->withTagAndSignInAs(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 99
    return-object v0
.end method

.method private withTagAndAdminConsole(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 164
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 165
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    .line 166
    return-object v0
.end method

.method private withTagAndApi(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 180
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 181
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    .line 182
    return-object v0
.end method

.method private withTagAndContentManager(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    .line 149
    return-object v0
.end method

.method private withTagAndEndUser(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 115
    return-object v0
.end method

.method private withTagAndSignInAs(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 131
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    .line 132
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 471
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 500
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    if-eqz p1, :cond_0

    .line 477
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    if-eqz v2, :cond_0

    .line 478
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    .line 479
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 482
    sget-object v2, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$AccessMethodLogInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 488
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 490
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 492
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 494
    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAdminConsoleValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ADMIN_CONSOLE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method public getApiValue()Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.API, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    return-object v0
.end method

.method public getContentManagerValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.CONTENT_MANAGER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method public getEndUserValue()Lcom/dropbox/core/v2/teamlog/SessionLogInfo;
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.END_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    return-object v0
.end method

.method public getSignInAsValue()Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SIGN_IN_AS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 458
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUserValue:Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAsValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManagerValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsoleValue:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->apiValue:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 466
    return v0
.end method

.method public isAdminConsole()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApi()Z
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentManager()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEndUser()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignInAs()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
