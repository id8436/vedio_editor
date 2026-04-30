.class public final Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
.super Ljava/lang/Object;
.source "RemoveMemberJobStatus.java"


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

.field private completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

.field private failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->withTag(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 2

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
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
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    .line 65
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    .line 66
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    .line 81
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    .line 82
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    .line 83
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;-><init>()V

    .line 96
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    .line 97
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    .line 98
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    if-eqz p1, :cond_0

    .line 242
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    if-eqz v2, :cond_0

    .line 243
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    .line 244
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v2, v3, :cond_0

    .line 247
    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveMemberJobStatus$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 230
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 231
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

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
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

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
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
