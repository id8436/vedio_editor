.class public final Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
.super Ljava/lang/Object;
.source "RelocationBatchJobStatus.java"


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

.field private completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

.field private failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->withTag(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;)Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 2

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
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
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>()V

    .line 67
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    .line 68
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>()V

    .line 82
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    .line 83
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    .line 84
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 238
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    if-eqz p1, :cond_0

    .line 244
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    if-eqz v2, :cond_0

    .line 245
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    .line 246
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-ne v2, v3, :cond_0

    .line 249
    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchJobStatus$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/RelocationBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/RelocationBatchError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/RelocationBatchResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/RelocationBatchError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 232
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 233
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

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
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

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
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
