.class public final Lcom/dropbox/core/v2/sharing/UnshareFileError;
.super Ljava/lang/Object;
.source "UnshareFileError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->withTag(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UnshareFileError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/UnshareFileError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 2

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 2

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;->withTagAndUserError(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    .line 77
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    .line 78
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    .line 108
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    .line 109
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 110
    return-object v0
.end method

.method private withTagAndUserError(Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/UnshareFileError;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnshareFileError;-><init>()V

    .line 92
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    .line 93
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 94
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-eqz p1, :cond_0

    .line 253
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    if-eqz v2, :cond_0

    .line 254
    check-cast p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    .line 255
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-ne v2, v3, :cond_0

    .line 258
    sget-object v2, Lcom/dropbox/core/v2/sharing/UnshareFileError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UnshareFileError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 264
    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-eq v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 242
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

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
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

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
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFileError;->_tag:Lcom/dropbox/core/v2/sharing/UnshareFileError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
