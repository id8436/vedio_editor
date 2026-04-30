.class public final Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
.super Ljava/lang/Object;
.source "GetFileMetadataError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->withTag(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 2

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    return-object v0
.end method

.method public static userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 2

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->withTagAndUserError(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    .line 80
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>()V

    .line 112
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    .line 113
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 114
    return-object v0
.end method

.method private withTagAndUserError(Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    .line 97
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 251
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    .line 257
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    if-eqz v2, :cond_0

    .line 258
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    .line 259
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-ne v2, v3, :cond_0

    .line 262
    sget-object v2, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetFileMetadataError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingUserError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 268
    goto :goto_0

    .line 262
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
    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-eq v0, v1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getUserErrorValue()Lcom/dropbox/core/v2/sharing/SharingUserError;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-eq v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userErrorValue:Lcom/dropbox/core/v2/sharing/SharingUserError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 246
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

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
    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

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
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->_tag:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
