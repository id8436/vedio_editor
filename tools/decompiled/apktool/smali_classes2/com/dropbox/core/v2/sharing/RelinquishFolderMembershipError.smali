.class public final Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
.super Ljava/lang/Object;
.source "RelinquishFolderMembershipError.java"


# static fields
.field public static final FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 2

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    .line 130
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    .line 131
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;-><init>()V

    .line 144
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    .line 145
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 146
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 302
    if-ne p1, p0, :cond_0

    .line 335
    :goto_0
    :pswitch_0
    return v1

    .line 305
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 306
    goto :goto_0

    .line 308
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    if-eqz v2, :cond_5

    .line 309
    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 310
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 311
    goto :goto_0

    .line 313
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFolderMembershipError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 331
    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 335
    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-eq v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 297
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOwner()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupAccess()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMounted()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 277
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 266
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

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
    .line 288
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolder()Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
