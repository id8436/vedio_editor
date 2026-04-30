.class public final Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
.super Ljava/lang/Object;
.source "RemoveFolderMemberError.java"


# static fields
.field public static final FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

.field private memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTag(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 2

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 2

    .prologue
    .line 232
    if-nez p0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->withTagAndMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    .line 108
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 109
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    .line 122
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 123
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 124
    return-object v0
.end method

.method private withTagAndMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;-><init>()V

    .line 137
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 138
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    .line 139
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 321
    if-ne p1, p0, :cond_0

    .line 352
    :goto_0
    :pswitch_0
    return v1

    .line 324
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 325
    goto :goto_0

    .line 327
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eqz v2, :cond_7

    .line 328
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 329
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveFolderMemberError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 348
    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    move v1, v0

    .line 352
    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
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
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 316
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 273
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 295
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 306
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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
    .line 284
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
