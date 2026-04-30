.class public final Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
.super Ljava/lang/Object;
.source "TeamFolderArchiveJobStatus.java"


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

.field private completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

.field private failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->withTag(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 2

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 2

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    .line 69
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    .line 70
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    .line 85
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    .line 86
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;-><init>()V

    .line 101
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    .line 103
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 245
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    .line 251
    instance-of v2, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    if-eqz v2, :cond_0

    .line 252
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    .line 253
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v2, v3, :cond_0

    .line 256
    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderArchiveJobStatus$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 234
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->completeValue:Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failedValue:Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 239
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 240
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

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
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

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
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->_tag:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
