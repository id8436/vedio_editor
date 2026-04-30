.class public final Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
.super Ljava/lang/Object;
.source "RemoveFileMemberError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

.field private userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->withTag(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 2

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method public static noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 2

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->withTagAndNoExplicitAccess(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 2

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->withTagAndUserError(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 87
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 121
    return-object v0
.end method

.method private withTagAndNoExplicitAccess(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 139
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 140
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 141
    return-object v0
.end method

.method private withTagAndUserError(Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 103
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 104
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    if-eqz p1, :cond_0

    .line 338
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    if-eqz v2, :cond_0

    .line 339
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    .line 340
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v2, v3, :cond_0

    .line 343
    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveFileMemberError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 351
    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getNoExplicitAccessValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->noExplicitAccessValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 327
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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
    .line 263
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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
    .line 316
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserError()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
