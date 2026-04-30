.class public final Lcom/dropbox/core/v2/sharing/JobError;
.super Ljava/lang/Object;
.source "JobError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/JobError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

.field private relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

.field private removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

.field private unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/JobError;->withTag(Lcom/dropbox/core/v2/sharing/JobError$Tag;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobError;->OTHER:Lcom/dropbox/core/v2/sharing/JobError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object v0
.end method

.method public static relinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 2

    .prologue
    .line 314
    if-nez p0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobError;->withTagAndRelinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    return-object v0
.end method

.method public static removeFolderMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 2

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobError;->withTagAndRemoveFolderMemberError(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    return-object v0
.end method

.method public static unshareFolderError(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 2

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobError;->withTagAndUnshareFolderError(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/JobError$Tag;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 98
    return-object v0
.end method

.method private withTagAndRelinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 158
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 159
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .line 160
    return-object v0
.end method

.method private withTagAndRemoveFolderMemberError(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 137
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 138
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 139
    return-object v0
.end method

.method private withTagAndUnshareFolderError(Lcom/dropbox/core/v2/sharing/JobError$Tag;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    .line 118
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 366
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    if-eqz p1, :cond_0

    .line 372
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/JobError;

    if-eqz v2, :cond_0

    .line 373
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobError;

    .line 374
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v2, v3, :cond_0

    .line 377
    sget-object v2, Lcom/dropbox/core/v2/sharing/JobError$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 379
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/UnshareFolderError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 385
    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRelinquishFolderMembershipErrorValue()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v0, v1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.RELINQUISH_FOLDER_MEMBERSHIP_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    return-object v0
.end method

.method public getRemoveFolderMemberErrorValue()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v0, v1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.REMOVE_FOLDER_MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method public getUnshareFolderErrorValue()Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-eq v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.UNSHARE_FOLDER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 355
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderErrorValue:Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberErrorValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipErrorValue:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 361
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelinquishFolderMembershipError()Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->RELINQUISH_FOLDER_MEMBERSHIP_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoveFolderMemberError()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->REMOVE_FOLDER_MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnshareFolderError()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobError$Tag;->UNSHARE_FOLDER_ERROR:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/JobError$Tag;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobError;->_tag:Lcom/dropbox/core/v2/sharing/JobError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
