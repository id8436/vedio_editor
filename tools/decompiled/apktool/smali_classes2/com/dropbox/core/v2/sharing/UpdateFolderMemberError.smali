.class public final Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
.super Ljava/lang/Object;
.source "UpdateFolderMemberError.java"


# static fields
.field public static final INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

.field private noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 2

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 2

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->withTagAndMemberError(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 2

    .prologue
    .line 290
    if-nez p0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->withTagAndNoExplicitAccess(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 102
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 117
    return-object v0
.end method

.method private withTagAndMemberError(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 131
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 132
    return-object v0
.end method

.method private withTagAndNoExplicitAccess(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    .line 149
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    if-eqz p1, :cond_0

    .line 367
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    if-eqz v2, :cond_0

    .line 368
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    .line 369
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v2, v3, :cond_0

    .line 372
    sget-object v2, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UpdateFolderMemberError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 374
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 378
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 380
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 382
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 384
    goto :goto_0

    .line 372
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

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 350
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 356
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientPlan()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberError()Z
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoExplicitAccess()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

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
    .line 345
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
