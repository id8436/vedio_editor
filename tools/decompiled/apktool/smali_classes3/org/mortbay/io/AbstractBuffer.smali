.class public abstract Lorg/mortbay/io/AbstractBuffer;
.super Ljava/lang/Object;
.source "AbstractBuffer.java"

# interfaces
.implements Lorg/mortbay/io/Buffer;


# static fields
.field static final $assertionsDisabled:Z

.field protected static final __IMMUTABLE:Ljava/lang/String; = "IMMUTABLE"

.field protected static final __READONLY:Ljava/lang/String; = "READONLY"

.field protected static final __READWRITE:Ljava/lang/String; = "READWRITE"

.field protected static final __VOLATILE:Ljava/lang/String; = "VOLATILE"

.field static class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;


# instance fields
.field protected _access:I

.field protected _get:I

.field protected _hash:I

.field protected _hashGet:I

.field protected _hashPut:I

.field protected _mark:I

.field protected _put:I

.field protected _string:Ljava/lang/String;

.field protected _view:Lorg/mortbay/io/View;

.field protected _volatile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/mortbay/io/AbstractBuffer;->class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.io.AbstractBuffer"

    invoke-static {v0}, Lorg/mortbay/io/AbstractBuffer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/io/AbstractBuffer;->class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lorg/mortbay/io/AbstractBuffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/io/AbstractBuffer;->class$org$mortbay$io$AbstractBuffer:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "IMMUTABLE && VOLATILE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 55
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    .line 56
    iput-boolean p2, p0, Lorg/mortbay/io/AbstractBuffer;->_volatile:Z

    .line 57
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public asArray()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 65
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 70
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v1, v0, v4, v2}, Lorg/mortbay/io/AbstractBuffer;->peek(I[BII)I

    goto :goto_0
.end method

.method public asImmutableBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asMutableBuffer()Lorg/mortbay/io/Buffer;
    .locals 6

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Lorg/mortbay/io/View;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    iget v5, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public asNonVolatileBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public asReadOnlyBuffer()Lorg/mortbay/io/Buffer;
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/mortbay/io/View;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    move-object p0, v0

    goto :goto_0
.end method

.method public buffer()Lorg/mortbay/io/Buffer;
    .locals 0

    .prologue
    .line 120
    return-object p0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 126
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 127
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 128
    return-void
.end method

.method public compact()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    .line 134
    :goto_0
    if-lez v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v2

    sub-int/2addr v2, v0

    .line 138
    if-lez v2, :cond_1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v3

    invoke-static {v1, v0, v3, v4, v2}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 145
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 147
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 149
    :cond_3
    return-void

    .line 133
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {p0, v0, v2}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    goto :goto_1
.end method

.method public duplicate(I)Lorg/mortbay/io/ByteArrayBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 76
    instance-of v0, v0, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;-><init>([BIII)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 182
    :goto_0
    return v0

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 158
    check-cast v0, Lorg/mortbay/io/Buffer;

    .line 160
    instance-of v3, p0, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-nez v3, :cond_3

    instance-of v3, v0, Lorg/mortbay/io/Buffer$CaseInsensitve;

    if-eqz v3, :cond_4

    .line 161
    :cond_3
    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_4
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    .line 167
    :cond_5
    iget v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_6

    instance-of v3, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v3, :cond_6

    .line 169
    check-cast p1, Lorg/mortbay/io/AbstractBuffer;

    .line 170
    iget v3, p1, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_6

    iget v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    iget v4, p1, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v3, v4, :cond_6

    move v0, v2

    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v6

    .line 175
    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v4

    .line 176
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v3

    move v5, v4

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-le v3, v6, :cond_8

    .line 178
    invoke-virtual {p0, v4}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v7

    .line 179
    add-int/lit8 v3, v5, -0x1

    invoke-interface {v0, v3}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v5

    .line 180
    if-eq v7, v5, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v5, v3

    move v3, v4

    .line 181
    goto :goto_1

    :cond_8
    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/4 v2, 0x0

    .line 187
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 191
    :cond_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v3

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 194
    :cond_1
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/mortbay/io/AbstractBuffer;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 196
    check-cast v0, Lorg/mortbay/io/AbstractBuffer;

    .line 197
    iget v3, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    iget v0, v0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v6

    .line 202
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v3

    .line 204
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v7

    .line 205
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v8

    .line 206
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 208
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_a

    .line 210
    aget-byte v3, v7, v4

    .line 211
    add-int/lit8 v5, v5, -0x1

    aget-byte v0, v8, v5

    .line 212
    if-eq v3, v0, :cond_5

    .line 214
    if-gt v9, v3, :cond_3

    if-gt v3, v10, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 215
    :cond_3
    if-gt v9, v0, :cond_4

    if-gt v0, v10, :cond_4

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 216
    :cond_4
    if-eq v3, v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v4

    .line 218
    goto :goto_1

    .line 222
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    move v5, v3

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-le v0, v6, :cond_a

    .line 224
    invoke-virtual {p0, v4}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v3

    .line 225
    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    .line 226
    if-eq v3, v0, :cond_9

    .line 228
    if-gt v9, v3, :cond_7

    if-gt v3, v10, :cond_7

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    .line 229
    :cond_7
    if-gt v9, v0, :cond_8

    if-gt v0, v10, :cond_8

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 230
    :cond_8
    if-eq v3, v0, :cond_9

    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v4

    .line 232
    goto :goto_2

    :cond_a
    move v0, v1

    .line 234
    goto/16 :goto_0
.end method

.method public get()B
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public get([BII)I
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    .line 245
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v0

    .line 246
    if-nez v0, :cond_1

    .line 247
    const/4 v0, -0x1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    if-le p3, v0, :cond_2

    move p3, v0

    .line 252
    :cond_2
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/mortbay/io/AbstractBuffer;->peek(I[BII)I

    move-result v0

    .line 253
    if-lez v0, :cond_0

    .line 254
    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    goto :goto_0
.end method

.method public get(I)Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    .line 261
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v1

    .line 262
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 263
    return-object v1
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    return v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    .line 278
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashGet:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashPut:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    if-eq v0, v1, :cond_6

    .line 280
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v2

    .line 281
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v3

    .line 282
    if-nez v3, :cond_2

    .line 284
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_4

    .line 286
    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v0

    .line 287
    if-gt v5, v0, :cond_1

    if-gt v0, v6, :cond_1

    .line 288
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 289
    :cond_1
    iget v3, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    move v0, v1

    .line 290
    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-le v0, v2, :cond_4

    .line 296
    aget-byte v0, v3, v1

    .line 297
    if-gt v5, v0, :cond_3

    if-gt v0, v6, :cond_3

    .line 298
    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    .line 299
    :cond_3
    iget v4, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v0, v4

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    move v0, v1

    .line 300
    goto :goto_1

    .line 302
    :cond_4
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    if-nez v0, :cond_5

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 304
    :cond_5
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashGet:I

    .line 305
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hashPut:I

    .line 308
    :cond_6
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_access:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolatile()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lorg/mortbay/io/AbstractBuffer;->_volatile:Z

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 334
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 339
    return-void
.end method

.method public markIndex()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_mark:I

    return v0
.end method

.method public peek()B
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v0

    return v0
.end method

.method public peek(II)Lorg/mortbay/io/Buffer;
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 353
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Lorg/mortbay/io/View;

    add-int v4, p1, p2

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/io/View;-><init>(Lorg/mortbay/io/Buffer;IIII)V

    iput-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    .line 366
    :goto_1
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    return-object v0

    .line 355
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 360
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    invoke-virtual {v0, v2}, Lorg/mortbay/io/View;->setMarkIndex(I)V

    .line 361
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 362
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->setPutIndex(I)V

    .line 363
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_view:Lorg/mortbay/io/View;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    goto :goto_1
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 371
    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 379
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 380
    add-int v2, p1, v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 382
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    .line 389
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v5

    .line 390
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v6

    .line 391
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 392
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-static {v5, v1, v6, p1, v0}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 412
    :cond_1
    return v0

    .line 393
    :cond_2
    if-eqz v5, :cond_3

    .line 395
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    .line 396
    :goto_0
    if-ge v1, v0, :cond_1

    .line 397
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v5, v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 396
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_0

    .line 399
    :cond_3
    if-eqz v6, :cond_4

    .line 401
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    .line 402
    :goto_1
    if-ge v1, v0, :cond_1

    .line 403
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v2

    aput-byte v2, v6, p1

    .line 402
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_1

    .line 407
    :cond_4
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    .line 408
    :goto_2
    if-ge v1, v0, :cond_1

    .line 409
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v2}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 408
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move p1, v4

    goto :goto_2
.end method

.method public poke(I[BII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 418
    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 425
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 427
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v1

    sub-int p4, v1, p1

    .line 433
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 434
    if-eqz v1, :cond_2

    .line 435
    invoke-static {p2, p3, v1, p1, p4}, Lorg/mortbay/io/Portable;->arraycopy([BI[BII)V

    .line 442
    :cond_1
    return p4

    .line 439
    :cond_2
    :goto_0
    if-ge v0, p4, :cond_1

    .line 440
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget-byte v3, p2, p3

    invoke-virtual {p0, p1, v3}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    move p1, v2

    goto :goto_0
.end method

.method public put(Lorg/mortbay/io/Buffer;)I
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 448
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    move-result v1

    .line 449
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 450
    return v1
.end method

.method public put([B)I
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 471
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/mortbay/io/AbstractBuffer;->poke(I[BII)I

    move-result v1

    .line 472
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 473
    return v1
.end method

.method public put([BII)I
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 463
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/mortbay/io/AbstractBuffer;->poke(I[BII)I

    move-result v1

    .line 464
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 465
    return v1
.end method

.method public put(B)V
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    .line 456
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/io/AbstractBuffer;->poke(IB)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setPutIndex(I)V

    .line 458
    return-void
.end method

.method public final putIndex()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x400

    const/4 v2, 0x0

    .line 661
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v3

    .line 662
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->space()I

    move-result v1

    .line 663
    if-le v1, p2, :cond_0

    move v1, p2

    .line 666
    :cond_0
    if-eqz v3, :cond_2

    .line 668
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    invoke-virtual {p1, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 669
    if-lez v0, :cond_1

    .line 670
    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    .line 686
    :cond_1
    :goto_0
    return v0

    .line 675
    :cond_2
    if-le v1, v0, :cond_3

    :goto_1
    new-array v0, v0, [B

    .line 677
    :goto_2
    if-lez v1, :cond_6

    .line 679
    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 680
    if-gez v3, :cond_4

    .line 681
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 675
    goto :goto_1

    .line 682
    :cond_4
    invoke-virtual {p0, v0, v2, v3}, Lorg/mortbay/io/AbstractBuffer;->put([BII)I

    move-result v4

    .line 683
    sget-boolean v5, Lorg/mortbay/io/AbstractBuffer;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    if-eq v3, v4, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 684
    :cond_5
    sub-int/2addr v1, v3

    .line 685
    goto :goto_2

    :cond_6
    move v0, v2

    .line 686
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 489
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    .line 490
    return-void
.end method

.method public setGetIndex(I)V
    .locals 1

    .prologue
    .line 502
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 504
    return-void
.end method

.method public setMarkIndex(I)V
    .locals 0

    .prologue
    .line 512
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_mark:I

    .line 513
    return-void
.end method

.method public setPutIndex(I)V
    .locals 1

    .prologue
    .line 525
    iput p1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    .line 526
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/io/AbstractBuffer;->_hash:I

    .line 527
    return-void
.end method

.method public skip(I)I
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result p1

    .line 532
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->setGetIndex(I)V

    .line 533
    return p1
.end method

.method public slice()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->sliceFromMark(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceFromMark(I)Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 551
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/io/AbstractBuffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 550
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/io/AbstractBuffer;->setMarkIndex(I)V

    goto :goto_0
.end method

.method public space()I
    .locals 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/mortbay/io/AbstractBuffer;->_put:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toDetailString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 561
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    const-string/jumbo v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 564
    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 566
    const-string/jumbo v0, ",m="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 568
    const-string/jumbo v0, ",g="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 570
    const-string/jumbo v0, ",p="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 572
    const-string/jumbo v0, ",c="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->capacity()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 574
    const-string/jumbo v0, "]={"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    if-ltz v0, :cond_3

    .line 577
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->markIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 579
    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v1

    int-to-char v2, v1

    .line 580
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    if-ge v2, v5, :cond_0

    const-string/jumbo v1, "\\0"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    const-string/jumbo v1, "\\"

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 588
    :cond_2
    const-string/jumbo v0, "}{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    :cond_3
    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    :goto_3
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 593
    invoke-virtual {p0, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I)B

    move-result v2

    int-to-char v4, v2

    .line 594
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 596
    if-ge v4, v5, :cond_5

    const-string/jumbo v2, "\\0"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    :goto_5
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x32

    if-ne v1, v4, :cond_4

    .line 603
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v4, 0x14

    if-le v1, v4, :cond_4

    .line 605
    const-string/jumbo v0, " ... "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->putIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    .line 591
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3

    .line 596
    :cond_5
    const-string/jumbo v2, "\\"

    goto :goto_4

    .line 600
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 610
    :cond_7
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 617
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 621
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/AbstractBuffer;->_string:Ljava/lang/String;

    .line 623
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->asArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x400

    const/4 v5, 0x0

    .line 636
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->array()[B

    move-result-object v1

    .line 638
    if-eqz v1, :cond_1

    .line 640
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 655
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->clear()V

    .line 656
    return-void

    .line 644
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->length()I

    move-result v1

    .line 645
    if-le v1, v0, :cond_2

    :goto_0
    new-array v3, v0, [B

    .line 646
    iget v0, p0, Lorg/mortbay/io/AbstractBuffer;->_get:I

    move v2, v0

    .line 647
    :goto_1
    if-lez v1, :cond_0

    .line 649
    array-length v0, v3

    if-le v1, v0, :cond_3

    array-length v0, v3

    :goto_2
    invoke-virtual {p0, v2, v3, v5, v0}, Lorg/mortbay/io/AbstractBuffer;->peek(I[BII)I

    move-result v4

    .line 650
    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 651
    add-int v0, v2, v4

    .line 652
    sub-int/2addr v1, v4

    move v2, v0

    .line 653
    goto :goto_1

    :cond_2
    move v0, v1

    .line 645
    goto :goto_0

    :cond_3
    move v0, v1

    .line 649
    goto :goto_2
.end method
