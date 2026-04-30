.class public final Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
.super Ljava/lang/Object;
.source "ListFileMembersIndividualResult.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

.field private resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->withTag(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
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
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public static result(Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 2

    .prologue
    .line 159
    if-nez p0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->RESULT:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->withTagAndResult(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    .line 81
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    .line 112
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    .line 113
    return-object v0
.end method

.method private withTagAndResult(Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;)Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;-><init>()V

    .line 95
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    .line 97
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 254
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    if-eqz p1, :cond_0

    .line 260
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    if-eqz v2, :cond_0

    .line 261
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;

    .line 262
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-ne v2, v3, :cond_0

    .line 265
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFileMembersIndividualResult$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 271
    goto :goto_0

    .line 265
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
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    return-object v0
.end method

.method public getResultValue()Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->RESULT:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.RESULT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->resultValue:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 249
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

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
    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResult()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;->RESULT:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
