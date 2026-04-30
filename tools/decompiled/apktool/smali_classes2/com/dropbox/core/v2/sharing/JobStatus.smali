.class public final Lcom/dropbox/core/v2/sharing/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field public static final COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

.field private failedValue:Lcom/dropbox/core/v2/sharing/JobError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus;->withTag(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus;->withTag(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/JobStatus;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 2

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/JobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    .line 70
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    .line 71
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/sharing/JobStatus$Tag;Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus;-><init>()V

    .line 85
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    .line 86
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    .line 87
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 187
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    if-eqz p1, :cond_0

    .line 193
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    if-eqz v2, :cond_0

    .line 194
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    .line 195
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne v2, v3, :cond_0

    .line 198
    sget-object v2, Lcom/dropbox/core/v2/sharing/JobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobStatus$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 200
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 202
    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/JobError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/JobError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 181
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 182
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

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
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

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
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/JobStatus;->_tag:Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
