.class public final Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
.super Ljava/lang/Object;
.source "RemoveCustomQuotaResult.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

.field private invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field private successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->withTag(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public static invalidUser(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 2

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->withTagAndInvalidUser(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 2

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->withTagAndSuccess(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndInvalidUser(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 117
    return-object v0
.end method

.method private withTagAndSuccess(Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    if-eqz p1, :cond_0

    .line 264
    instance-of v2, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    if-eqz v2, :cond_0

    .line 265
    check-cast p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;

    .line 266
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-ne v2, v3, :cond_0

    .line 269
    sget-object v2, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$1;->$SwitchMap$com$dropbox$core$v2$team$RemoveCustomQuotaResult$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 275
    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getInvalidUserValue()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-eq v0, v1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INVALID_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->successValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->invalidUserValue:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    return v0
.end method

.method public isInvalidUser()Z
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->INVALID_USER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

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
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

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
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;->_tag:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
