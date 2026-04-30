.class public final Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
.super Ljava/lang/Object;
.source "FileMemberActionIndividualResult.java"


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

.field private memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

.field private successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0
.end method

.method public static memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->withTagAndMemberError(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public static success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->withTagAndSuccess(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    .line 59
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    .line 60
    return-object v0
.end method

.method private withTagAndMemberError(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    .line 89
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 90
    return-object v0
.end method

.method private withTagAndSuccess(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    .line 73
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 74
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 228
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    if-eqz p1, :cond_0

    .line 234
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    if-eqz v2, :cond_0

    .line 235
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    .line 236
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v2, v3, :cond_0

    .line 239
    sget-object v2, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionIndividualResult$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMemberErrorValue()Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MEMBER_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->successValue:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberErrorValue:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 223
    return v0
.end method

.method public isMemberError()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->_tag:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
