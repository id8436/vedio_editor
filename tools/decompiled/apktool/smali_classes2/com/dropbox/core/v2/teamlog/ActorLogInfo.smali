.class public final Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
.super Ljava/lang/Object;
.source "ActorLogInfo.java"


# static fields
.field public static final DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

.field private adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

.field private appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

.field private resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

.field private userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/teamlog/ActorLogInfo;)Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object v0
.end method

.method public static admin(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    .prologue
    .line 262
    if-nez p0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->withTagAndAdmin(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static app(Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->withTagAndApp(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static reseller(Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->withTagAndReseller(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 2

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->withTagAndUser(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 102
    return-object v0
.end method

.method private withTagAndAdmin(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 133
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 134
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 135
    return-object v0
.end method

.method private withTagAndApp(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/AppLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 150
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 151
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    .line 152
    return-object v0
.end method

.method private withTagAndReseller(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 166
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 167
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    .line 168
    return-object v0
.end method

.method private withTagAndUser(Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ActorLogInfo;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    .line 118
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 417
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    if-eqz p1, :cond_0

    .line 423
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    if-eqz v2, :cond_0

    .line 424
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;

    .line 425
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 428
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$ActorLogInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 432
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 434
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 436
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 438
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 440
    goto :goto_0

    .line 428
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

.method public getAdminValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ADMIN, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method public getAppValue()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.APP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object v0
.end method

.method public getResellerValue()Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.RESELLER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    return-object v0
.end method

.method public getUserValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->userValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->adminValue:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->appValue:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->resellerValue:Lcom/dropbox/core/v2/teamlog/ResellerLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 412
    return v0
.end method

.method public isAdmin()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->ADMIN:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApp()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->APP:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropbox()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->DROPBOX:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

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
    .line 400
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReseller()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->RESELLER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUser()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ActorLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
