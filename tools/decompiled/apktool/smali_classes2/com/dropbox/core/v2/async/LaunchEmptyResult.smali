.class public final Lcom/dropbox/core/v2/async/LaunchEmptyResult;
.super Ljava/lang/Object;
.source "LaunchEmptyResult.java"


# static fields
.field public static final COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

.field private asyncJobIdValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->withTag(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/async/LaunchEmptyResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;-><init>()V

    .line 71
    iput-object p1, v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    .line 72
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/async/LaunchEmptyResult;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    .line 92
    iput-object p2, v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    .line 93
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    if-eqz p1, :cond_0

    .line 195
    instance-of v2, p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    if-eqz v2, :cond_0

    .line 196
    check-cast p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    .line 197
    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-ne v2, v3, :cond_0

    .line 200
    sget-object v2, Lcom/dropbox/core/v2/async/LaunchEmptyResult$1;->$SwitchMap$com$dropbox$core$v2$async$LaunchEmptyResult$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 204
    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-eq v0, v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->asyncJobIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 183
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 184
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;->_tag:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
