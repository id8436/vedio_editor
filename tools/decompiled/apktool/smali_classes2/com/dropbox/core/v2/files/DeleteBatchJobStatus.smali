.class public final Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
.super Ljava/lang/Object;
.source "DeleteBatchJobStatus.java"


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

.field public static final OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

.field private completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

.field private failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->withTag(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->withTag(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;)Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;)Lcom/dropbox/core/v2/files/DeleteBatchError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 2

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/files/DeleteBatchError;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 2

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchError;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    .line 89
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    .line 103
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    .line 104
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .line 105
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;Lcom/dropbox/core/v2/files/DeleteBatchError;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    .line 121
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    if-eqz p1, :cond_0

    .line 279
    instance-of v2, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    if-eqz v2, :cond_0

    .line 280
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .line 281
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-ne v2, v3, :cond_0

    .line 284
    sget-object v2, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchJobStatus$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 286
    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/DeleteBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/DeleteBatchError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 292
    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/files/DeleteBatchError;
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failedValue:Lcom/dropbox/core/v2/files/DeleteBatchError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 267
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 268
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

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
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

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
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

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
    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
