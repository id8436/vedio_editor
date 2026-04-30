.class public final Lcom/dropbox/core/v2/sharing/TransferFolderError;
.super Ljava/lang/Object;
.source "TransferFolderError.java"


# static fields
.field public static final INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/TransferFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 2

    .prologue
    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    .line 121
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 122
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;-><init>()V

    .line 135
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 136
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 137
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 293
    if-ne p1, p0, :cond_0

    .line 326
    :goto_0
    :pswitch_0
    return v1

    .line 296
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 297
    goto :goto_0

    .line 299
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    if-eqz v2, :cond_5

    .line 300
    check-cast p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    .line 301
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 302
    goto :goto_0

    .line 304
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/TransferFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$TransferFolderError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 322
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

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

    .line 326
    goto :goto_0

    .line 304
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
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 288
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewOwnerEmailUnverified()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewOwnerNotAMember()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewOwnerUnmounted()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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
    .line 268
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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
    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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
    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->_tag:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
