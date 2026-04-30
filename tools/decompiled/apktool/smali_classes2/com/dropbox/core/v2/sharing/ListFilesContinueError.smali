.class public final Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
.super Ljava/lang/Object;
.source "ListFilesContinueError.java"


# static fields
.field public static final INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

.field private userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->withTag(Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->withTag(Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ListFilesContinueError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    .locals 2

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->withTagAndUserError(Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    .line 89
    return-object v0
.end method

.method private withTagAndUserError(Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/ListFilesContinueError;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;-><init>()V

    .line 105
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    .line 106
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 107
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 209
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    if-eqz p1, :cond_0

    .line 215
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    if-eqz v2, :cond_0

    .line 216
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    .line 217
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    if-ne v2, v3, :cond_0

    .line 220
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFilesContinueError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 224
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 226
    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    if-eq v0, v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 204
    return v0
.end method

.method public isInvalidCursor()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

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
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

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
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;->_tag:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
