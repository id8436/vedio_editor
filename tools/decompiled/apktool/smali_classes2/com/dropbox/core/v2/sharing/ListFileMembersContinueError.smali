.class public final Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
.super Ljava/lang/Object;
.source "ListFileMembersContinueError.java"


# static fields
.field public static final INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->withTag(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->withTag(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
    .locals 2

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    move-result-object v0

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
    .locals 2

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->withTagAndUserError(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    .line 85
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    .line 86
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 118
    return-object v0
.end method

.method private withTagAndUserError(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    .line 101
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 102
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    if-eqz p1, :cond_0

    .line 272
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    if-eqz v2, :cond_0

    .line 273
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    .line 274
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    if-ne v2, v3, :cond_0

    .line 277
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFileMembersContinueError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 283
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 285
    goto :goto_0

    .line 277
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
    .line 226
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    if-eq v0, v1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 261
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidCursor()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

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
    .line 251
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

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
    .line 147
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
