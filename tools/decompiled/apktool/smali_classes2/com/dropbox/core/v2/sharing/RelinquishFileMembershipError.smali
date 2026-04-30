.class public final Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
.super Ljava/lang/Object;
.source "RelinquishFileMembershipError.java"


# static fields
.field public static final GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .line 72
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->withTag(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    .locals 2

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>()V

    .line 90
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 91
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;-><init>()V

    .line 104
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 105
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 106
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 218
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    if-eqz p1, :cond_0

    .line 224
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    if-eqz v2, :cond_0

    .line 225
    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    .line 226
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-ne v2, v3, :cond_0

    .line 229
    sget-object v2, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFileMembershipError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 231
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 233
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 235
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 237
    goto :goto_0

    .line 229
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
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 213
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

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
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

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
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

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
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;->_tag:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
