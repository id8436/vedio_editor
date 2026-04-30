.class public final Lcom/dropbox/core/v2/files/DeleteError;
.super Ljava/lang/Object;
.source "DeleteError.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/DeleteError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

.field private pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

.field private pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteError;->withTag(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteError;->withTag(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteError;->withTag(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError;->OTHER:Lcom/dropbox/core/v2/files/DeleteError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 2

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteError;->withTagAndPathLookup(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    return-object v0
.end method

.method public static pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 2

    .prologue
    .line 216
    if-nez p0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteError;->withTagAndPathWrite(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/DeleteError$Tag;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    .line 94
    return-object v0
.end method

.method private withTagAndPathLookup(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 109
    return-object v0
.end method

.method private withTagAndPathWrite(Lcom/dropbox/core/v2/files/DeleteError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError;-><init>()V

    .line 122
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    .line 123
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 124
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 282
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    if-eqz p1, :cond_0

    .line 288
    instance-of v2, p1, Lcom/dropbox/core/v2/files/DeleteError;

    if-eqz v2, :cond_0

    .line 289
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteError;

    .line 290
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v2, v3, :cond_0

    .line 293
    sget-object v2, Lcom/dropbox/core/v2/files/DeleteError$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 299
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 301
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 303
    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPathLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getPathWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-eq v0, v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PATH_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 272
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 277
    return v0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPathLookup()Z
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPathWrite()Z
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError$Tag;

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
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteError$Tag;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteError;->_tag:Lcom/dropbox/core/v2/files/DeleteError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
