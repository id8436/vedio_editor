.class Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;
.super Ljava/lang/Object;
.source "AdobeSearchInptStreamUtil.java"


# static fields
.field private static T:Ljava/lang/String;


# instance fields
.field _buffer:[B

.field final _bufferCapacity:I

.field _dataCursor:I

.field _dataLen:I

.field _inputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "SearchInput"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->T:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_bufferCapacity:I

    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_inputStream:Ljava/io/InputStream;

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 39
    :goto_0
    if-gez v0, :cond_0

    move v0, v1

    .line 41
    :cond_0
    iput v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    .line 42
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    .line 43
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static __UnitTest()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 193
    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 196
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 197
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 200
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->createWithInputStream(Ljava/io/InputStream;I)Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;

    move-result-object v2

    .line 203
    const-string/jumbo v0, "ghij"

    .line 204
    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->copyInputIntoStreamUntilMatchData(Ljava/io/OutputStream;Ljava/lang/String;)Z

    move-result v4

    .line 206
    if-nez v4, :cond_0

    .line 207
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 212
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->T:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v0, :cond_1

    const-string/jumbo v4, "abcdef"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "length not correct."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 223
    :cond_1
    const-string/jumbo v0, "klm"

    .line 224
    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->copyInputIntoStreamUntilMatchData(Ljava/io/OutputStream;Ljava/lang/String;)Z

    move-result v4

    .line 226
    if-nez v4, :cond_2

    .line 227
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 231
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :goto_1
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->T:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz v0, :cond_3

    const-string/jumbo v4, "abcdef"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "length not correct."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 232
    :catch_1
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 241
    :cond_3
    const-string/jumbo v0, "zabcdef"

    .line 242
    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->copyInputIntoStreamUntilMatchData(Ljava/io/OutputStream;Ljava/lang/String;)Z

    move-result v4

    .line 244
    if-nez v4, :cond_4

    .line 245
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 249
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    :goto_2
    if-eqz v0, :cond_5

    const-string/jumbo v4, "abcdefnopqrstuvwxy"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 254
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "length not correct."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 250
    :catch_2
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 257
    :cond_6
    const-string/jumbo v0, "!there"

    .line 258
    invoke-virtual {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->copyInputIntoStreamUntilMatchData(Ljava/io/OutputStream;Ljava/lang/String;)Z

    move-result v0

    .line 259
    if-eqz v0, :cond_7

    .line 260
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "found a non existing pattern!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v0

    .line 267
    :goto_3
    if-eqz v1, :cond_8

    const-string/jumbo v0, "abcdefnopqrstuvwxyghijklmnopqrstuvwxyz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 268
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "length not correct."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 264
    :catch_3
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 270
    :cond_9
    return-void

    .line 193
    nop

    :array_0
    .array-data 1
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method public static createWithInputStream(Ljava/io/InputStream;I)Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;-><init>(Ljava/io/InputStream;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private readStreamIntoBuffer()I
    .locals 6

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    :try_start_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_bufferCapacity:I

    iget v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    sub-int/2addr v0, v2

    .line 72
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 73
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    :try_start_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->T:Ljava/lang/String;

    const-string/jumbo v3, "End of stream."

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_inputStream:Ljava/io/InputStream;

    .line 85
    :goto_0
    return v0

    .line 78
    :cond_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1
.end method


# virtual methods
.method public copyInputIntoStreamUntilMatchData(Ljava/io/OutputStream;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    move v1, v2

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_bufferCapacity:I

    if-lt v0, v1, :cond_2

    move v1, v2

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 111
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v0, v2

    move v1, v2

    .line 118
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    if-eq v0, v9, :cond_0

    .line 119
    invoke-virtual {p0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->indexOf([B)I

    move-result v6

    .line 121
    if-eq v6, v9, :cond_6

    .line 122
    const/4 v1, 0x1

    .line 125
    if-eqz p1, :cond_4

    .line 127
    :try_start_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    iget v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    sub-int v8, v6, v8

    invoke-virtual {p1, v3, v7, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_4
    :goto_2
    add-int v3, v6, v4

    iput v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    .line 135
    iget v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    iget v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    .line 137
    iget v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    if-lez v3, :cond_5

    .line 139
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    invoke-static {v3, v6, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    :cond_5
    iput v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    .line 142
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->readStreamIntoBuffer()I

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v1, v2

    .line 114
    goto :goto_0

    .line 128
    :catch_1
    move-exception v3

    .line 129
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 152
    :cond_6
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    if-lt v0, v4, :cond_8

    .line 155
    if-eqz p1, :cond_7

    .line 157
    :try_start_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    iget v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    sub-int/2addr v6, v4

    invoke-virtual {p1, v0, v3, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 163
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    sub-int/2addr v3, v4

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    invoke-static {v0, v3, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    .line 165
    iput v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    .line 172
    :goto_4
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->readStreamIntoBuffer()I

    move-result v0

    .line 174
    if-ne v0, v9, :cond_3

    .line 176
    if-eqz p1, :cond_3

    .line 178
    :try_start_3
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    iget v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    invoke-virtual {p1, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 179
    :catch_2
    move-exception v3

    .line 180
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 158
    :catch_3
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    iget v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    invoke-static {v0, v3, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    goto :goto_4
.end method

.method public indexOf([B)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 52
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataCursor:I

    :goto_0
    iget v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_dataLen:I

    array-length v3, p1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 53
    const/4 v3, 0x1

    move v1, v2

    .line 54
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 55
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeSearchInptStreamUtil;->_buffer:[B

    add-int v5, v0, v1

    aget-byte v4, v4, v5

    aget-byte v5, p1, v1

    if-eq v4, v5, :cond_0

    move v1, v2

    .line 60
    :goto_2
    if-eqz v1, :cond_1

    .line 64
    :goto_3
    return v0

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    move v1, v3

    goto :goto_2
.end method
