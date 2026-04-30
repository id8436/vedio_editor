.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
.super Ljava/lang/Object;
.source "UploadSessionFinishBatchLaunch.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

.field private asyncJobIdValue:Ljava/lang/String;

.field private completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 2

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 2

    .prologue
    .line 227
    if-nez p0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->withTagAndComplete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    .line 87
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 108
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;-><init>()V

    .line 124
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    .line 125
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    .line 126
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 272
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    if-eqz p1, :cond_0

    .line 278
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    if-eqz v2, :cond_0

    .line 279
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    .line 280
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    if-ne v2, v3, :cond_0

    .line 283
    sget-object v2, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchLaunch$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 289
    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 266
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 267
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

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
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

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
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
