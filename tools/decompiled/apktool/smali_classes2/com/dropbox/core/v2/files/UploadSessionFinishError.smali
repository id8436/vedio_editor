.class public final Lcom/dropbox/core/v2/files/UploadSessionFinishError;
.super Ljava/lang/Object;
.source "UploadSessionFinishError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

.field public static final TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

.field private lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field private pathValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static lookupFailed(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 2

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->withTagAndLookupFailed(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    return-object v0
.end method

.method public static path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 2

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->withTagAndPath(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 103
    return-object v0
.end method

.method private withTagAndLookupFailed(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 117
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 118
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 119
    return-object v0
.end method

.method private withTagAndPath(Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;-><init>()V

    .line 133
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    .line 134
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 135
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 299
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    if-eqz p1, :cond_0

    .line 305
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    if-eqz v2, :cond_0

    .line 306
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    .line 307
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v2, v3, :cond_0

    .line 310
    sget-object v2, Lcom/dropbox/core/v2/files/UploadSessionFinishError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 316
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 318
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 320
    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLookupFailedValue()Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-eq v0, v1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.LOOKUP_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-object v0
.end method

.method public getPathValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-eq v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 289
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailedValue:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->pathValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 294
    return v0
.end method

.method public isLookupFailed()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->LOOKUP_FAILED:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

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
    .line 284
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->PATH:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManySharedFolderTargets()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
