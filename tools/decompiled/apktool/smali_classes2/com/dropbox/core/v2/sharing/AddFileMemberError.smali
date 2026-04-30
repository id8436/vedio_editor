.class public final Lcom/dropbox/core/v2/sharing/AddFileMemberError;
.super Ljava/lang/Object;
.source "AddFileMemberError.java"


# static fields
.field public static final INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

.field public static final RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->withTag(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->withTag(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->withTag(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 2

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 2

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->withTagAndUserError(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    .line 96
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    .line 128
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    .line 129
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 130
    return-object v0
.end method

.method private withTagAndUserError(Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    .line 112
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 113
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 289
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    if-eqz p1, :cond_0

    .line 295
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    if-eqz v2, :cond_0

    .line 296
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .line 297
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v2, v3, :cond_0

    .line 300
    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFileMemberError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 306
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 308
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 310
    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-eq v0, v1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 284
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidComment()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

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
    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRateLimit()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

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
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->_tag:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
