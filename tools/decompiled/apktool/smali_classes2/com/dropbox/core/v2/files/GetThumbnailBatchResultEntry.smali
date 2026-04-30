.class public final Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
.super Ljava/lang/Object;
.source "GetThumbnailBatchResultEntry.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

.field private failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

.field private successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->withTag(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;)Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    return-object v0
.end method

.method public static failure(Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 2

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->withTagAndFailure(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 2

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->withTagAndSuccess(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    .line 77
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    .line 78
    return-object v0
.end method

.method private withTagAndFailure(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    .line 109
    return-object v0
.end method

.method private withTagAndSuccess(Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    .line 92
    iput-object p2, v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    .line 93
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-eqz p1, :cond_0

    .line 253
    instance-of v2, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    if-eqz v2, :cond_0

    .line 254
    check-cast p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;

    .line 255
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-ne v2, v3, :cond_0

    .line 258
    sget-object v2, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$1;->$SwitchMap$com$dropbox$core$v2$files$GetThumbnailBatchResultEntry$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/ThumbnailError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 264
    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFailureValue()Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-eq v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILURE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-eq v0, v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultData;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/ThumbnailError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 242
    return v0
.end method

.method public isFailure()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

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
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->OTHER:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

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
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchResultEntry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
