.class public final Lcom/dropbox/core/v2/team/MembersAddJobStatus;
.super Ljava/lang/Object;
.source "MembersAddJobStatus.java"


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

.field private completeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation
.end field

.field private failedValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->withTag(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MembersAddJobStatus;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MembersAddJobStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    return-object v0
.end method

.method public static complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddJobStatus;"
        }
    .end annotation

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    .line 170
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public static failed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 2

    .prologue
    .line 223
    if-nez p0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    .line 73
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddJobStatus;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>()V

    .line 90
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    .line 91
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    .line 92
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    .line 108
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 260
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    if-eqz p1, :cond_0

    .line 266
    instance-of v2, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    if-eqz v2, :cond_0

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    .line 268
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-ne v2, v3, :cond_0

    .line 271
    sget-object v2, Lcom/dropbox/core/v2/team/MembersAddJobStatus$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddJobStatus$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 273
    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 277
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    return-object v0
.end method

.method public getFailedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->completeValue:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failedValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 254
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 255
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->_tag:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
