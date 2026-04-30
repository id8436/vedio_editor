.class public final Lcom/dropbox/core/v2/files/UploadSessionLookupError;
.super Ljava/lang/Object;
.source "UploadSessionLookupError.java"


# static fields
.field public static final CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field public static final NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field public static final NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

.field private incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 81
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->withTag(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    return-object v0
.end method

.method public static incorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 2

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->withTagAndIncorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    .line 108
    return-object v0
.end method

.method private withTagAndIncorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;-><init>()V

    .line 125
    iput-object p1, v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    .line 126
    iput-object p2, v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    .line 127
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 258
    if-ne p1, p0, :cond_0

    .line 285
    :goto_0
    :pswitch_0
    return v1

    .line 261
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 262
    goto :goto_0

    .line 264
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    if-eqz v2, :cond_5

    .line 265
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 266
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/UploadSessionLookupError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionLookupError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 281
    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 285
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getIncorrectOffsetValue()Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-eq v0, v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INCORRECT_OFFSET, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffsetValue:Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncorrectOffset()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->INCORRECT_OFFSET:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotClosed()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

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
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->_tag:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
