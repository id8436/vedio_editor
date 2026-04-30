.class public final Lcom/dropbox/core/v2/files/WriteError;
.super Ljava/lang/Object;
.source "WriteError.java"


# static fields
.field public static final DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

.field public static final INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

.field public static final NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/WriteError;

.field public static final TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field private conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

.field private malformedPathValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->withTag(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    .line 76
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->withTag(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->withTag(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->withTag(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/WriteError;->withTag(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object v0
.end method

.method public static conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 2

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteError;->withTagAndConflict(Lcom/dropbox/core/v2/files/WriteError$Tag;Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public static malformedPath()Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public static malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteError;->withTagAndMalformedPath(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/WriteError$Tag;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 112
    return-object v0
.end method

.method private withTagAndConflict(Lcom/dropbox/core/v2/files/WriteError$Tag;Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    .line 137
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 138
    iput-object p2, v0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    .line 139
    return-object v0
.end method

.method private withTagAndMalformedPath(Lcom/dropbox/core/v2/files/WriteError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError;-><init>()V

    .line 121
    iput-object p1, v0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 122
    iput-object p2, v0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    .line 123
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 331
    if-ne p1, p0, :cond_0

    .line 362
    :goto_0
    :pswitch_0
    return v1

    .line 334
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/WriteError;

    if-eqz v2, :cond_7

    .line 338
    check-cast p1, Lcom/dropbox/core/v2/files/WriteError;

    .line 339
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 340
    goto :goto_0

    .line 342
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/WriteError$1;->$SwitchMap$com$dropbox$core$v2$files$WriteError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/WriteError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 358
    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 346
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteConflictError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    move v1, v0

    .line 362
    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getConflictValue()Lcom/dropbox/core/v2/files/WriteConflictError;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v0, v1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.CONFLICT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    return-object v0
.end method

.method public getMalformedPathValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MALFORMED_PATH, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 321
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->malformedPathValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteError;->conflictValue:Lcom/dropbox/core/v2/files/WriteConflictError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 326
    return v0
.end method

.method public isConflict()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisallowedName()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientSpace()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMalformedPath()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoWritePermission()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

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
    .line 316
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamFolder()Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteError$Tag;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteError;->_tag:Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
