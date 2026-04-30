.class final Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/parser/webm/EbmlReader;


# static fields
.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_FINISHED_READING:I = 0x2

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final VARINT_LENGTH_MASKS:[I


# instance fields
.field private bytesRead:J

.field private bytesState:I

.field private elementContentSize:J

.field private elementContentSizeState:I

.field private elementId:I

.field private elementIdState:I

.field private elementOffset:J

.field private eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

.field private final masterElementsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private stringBytes:[B

.field private final tempByteArray:[B

.field private varintBytesLength:I

.field private varintBytesState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->VARINT_LENGTH_MASKS:[I

    return-void

    :array_0
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    .line 62
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    return-void
.end method

.method private getTempByteArrayValue(IZ)J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 523
    if-eqz p2, :cond_0

    .line 524
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    aget-byte v2, v1, v0

    sget-object v3, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->VARINT_LENGTH_MASKS:[I

    iget v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 526
    :cond_0
    const-wide/16 v2, 0x0

    .line 527
    :goto_0
    if-ge v0, p1, :cond_1

    .line 529
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    return-wide v2
.end method

.method private prepareForNextElement()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->state:I

    .line 312
    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementIdState:I

    .line 313
    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSizeState:I

    .line 314
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementOffset:J

    .line 315
    return-void
.end method

.method private readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Ljava/nio/ByteBuffer;I)I
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Byte buffer not large enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    if-lt v0, p3, :cond_1

    .line 440
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 442
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    sub-int v0, p3, v0

    .line 443
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 444
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->updateBytesState(II)I

    move-result v0

    goto :goto_0
.end method

.method private readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I
    .locals 2

    .prologue
    .line 461
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    if-nez v0, :cond_0

    array-length v0, p2

    if-le p3, v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Byte array not large enough"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    if-lt v0, p3, :cond_1

    .line 465
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0

    .line 467
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    sub-int v0, p3, v0

    .line 468
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->read([BII)I

    move-result v0

    .line 469
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->updateBytesState(II)I

    move-result v0

    goto :goto_0
.end method

.method private readElementContentSize(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 356
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSizeState:I

    if-ne v1, v4, :cond_0

    .line 369
    :goto_0
    return v0

    .line 359
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSizeState:I

    if-nez v1, :cond_1

    .line 360
    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesState:I

    .line 361
    iput v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSizeState:I

    .line 363
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readVarintBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v1

    .line 364
    if-eqz v1, :cond_2

    move v0, v1

    .line 365
    goto :goto_0

    .line 367
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->getTempByteArrayValue(IZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    .line 368
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSizeState:I

    goto :goto_0
.end method

.method private readElementId(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 327
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementIdState:I

    if-ne v1, v4, :cond_0

    .line 341
    :goto_0
    return v0

    .line 330
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementIdState:I

    if-nez v1, :cond_1

    .line 331
    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesState:I

    .line 332
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementIdState:I

    .line 334
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readVarintBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v1

    .line 335
    if-eqz v1, :cond_2

    move v0, v1

    .line 336
    goto :goto_0

    .line 339
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->getTempByteArrayValue(IZ)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    .line 340
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementIdState:I

    goto :goto_0
.end method

.method private readVarintBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 385
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v1

    .line 390
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesState:I

    if-nez v0, :cond_5

    .line 391
    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I

    move-result v0

    .line 393
    if-eqz v0, :cond_2

    move v1, v0

    .line 394
    goto :goto_0

    .line 396
    :cond_2
    iput v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesState:I

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    .line 399
    iput v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    move v0, v1

    .line 400
    :goto_1
    sget-object v3, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->VARINT_LENGTH_MASKS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 401
    sget-object v3, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->VARINT_LENGTH_MASKS:[I

    aget v3, v3, v0

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    .line 402
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    .line 406
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    if-ne v0, v4, :cond_5

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No valid varint length mask found at bytesRead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I

    move-result v0

    .line 414
    if-eqz v0, :cond_0

    move v1, v0

    .line 415
    goto :goto_0
.end method

.method private skipBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    if-lt v0, p2, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0

    .line 488
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    sub-int v0, p2, v0

    .line 489
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->skip(I)I

    move-result v0

    .line 490
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->updateBytesState(II)I

    move-result v0

    goto :goto_0
.end method

.method private updateBytesState(II)I
    .locals 4

    .prologue
    .line 502
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 503
    const/4 v0, 0x2

    .line 510
    :goto_0
    return v0

    .line 505
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    .line 506
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    .line 507
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    if-ge v0, p2, :cond_1

    .line 508
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBytesRead()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    return-wide v0
.end method

.method public read(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x4

    const/4 v6, 0x0

    const-wide/32 v8, 0x7fffffff

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    .line 142
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;->access$000(Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;->access$100(Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->onMasterElementEnd(I)V

    .line 247
    :cond_0
    :goto_2
    return v7

    :cond_1
    move v0, v7

    .line 139
    goto :goto_0

    .line 147
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->state:I

    if-nez v0, :cond_5

    .line 148
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readElementId(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v0

    .line 149
    if-eqz v0, :cond_3

    move v7, v0

    .line 150
    goto :goto_2

    .line 152
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readElementContentSize(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v0

    .line 153
    if-eqz v0, :cond_4

    move v7, v0

    .line 154
    goto :goto_2

    .line 156
    :cond_4
    iput v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->state:I

    .line 157
    iput v7, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->getElementType(I)I

    move-result v0

    .line 161
    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :pswitch_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementOffset:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    new-instance v1, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v8, v10

    invoke-direct {v1, v2, v8, v9, v6}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$MasterElement;-><init>(IJLcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementOffset:J

    iget-wide v5, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->onMasterElementStart(IJIJ)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    goto :goto_2

    .line 170
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid integer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v2

    .line 174
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I

    move-result v1

    .line 175
    if-eqz v1, :cond_7

    move v7, v1

    .line 176
    goto/16 :goto_2

    .line 178
    :cond_7
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-direct {p0, v0, v7}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->getTempByteArrayValue(IZ)J

    move-result-wide v0

    .line 179
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->onIntegerElement(IJ)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    goto/16 :goto_2

    .line 183
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid float size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->tempByteArray:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v2

    .line 188
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I

    move-result v1

    .line 189
    if-eqz v1, :cond_9

    move v7, v1

    .line 190
    goto/16 :goto_2

    .line 192
    :cond_9
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    invoke-direct {p0, v0, v7}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->getTempByteArrayValue(IZ)J

    move-result-wide v0

    .line 194
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_a

    .line 195
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 199
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget v3, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->onFloatElement(ID)V

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    goto/16 :goto_2

    .line 197
    :cond_a
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_3

    .line 203
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_b

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "String element size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is larger than MAX_INT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->stringBytes:[B

    if-nez v0, :cond_c

    .line 208
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->stringBytes:[B

    .line 210
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->stringBytes:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v2

    .line 211
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I

    move-result v1

    .line 212
    if-eqz v1, :cond_d

    move v7, v1

    .line 213
    goto/16 :goto_2

    .line 215
    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->stringBytes:[B

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 216
    iput-object v6, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->stringBytes:[B

    .line 217
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->onStringElement(ILjava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    goto/16 :goto_2

    .line 221
    :pswitch_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_e

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Binary element size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is larger than MAX_INT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_e
    invoke-interface {p1}, Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;->getAvailableByteCount()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_f

    move v7, v1

    .line 226
    goto/16 :goto_2

    .line 228
    :cond_f
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementOffset:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    iget v1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementId:I

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementOffset:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v8

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;->onBinaryElement(IJIILcom/google/android/exoplayer/upstream/NonBlockingInputStream;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementOffset:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v0, v2

    .line 233
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 234
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Incorrect total bytes read. Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " but actually "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    goto/16 :goto_2

    .line 241
    :pswitch_5
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_11

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown element size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is larger than MAX_INT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_11
    iget-wide v2, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v2

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->skipBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)I

    move-result v0

    .line 246
    if-eqz v0, :cond_12

    move v7, v0

    .line 247
    goto/16 :goto_2

    .line 249
    :cond_12
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    goto/16 :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public readBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    .line 282
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Couldn\'t read bytes into buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    return-void
.end method

.method public readBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;[BI)I

    move-result v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Couldn\'t read bytes into array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method public readVarint(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)J
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesState:I

    .line 272
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->readVarintBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;)I

    move-result v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Couldn\'t read varint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->varintBytesLength:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->getTempByteArrayValue(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->prepareForNextElement()V

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->masterElementsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesRead:J

    .line 267
    return-void
.end method

.method public setEventHandler(Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->eventHandler:Lcom/google/android/exoplayer/chunk/parser/webm/EbmlEventHandler;

    .line 135
    return-void
.end method

.method public skipBytes(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->bytesState:I

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/chunk/parser/webm/DefaultEbmlReader;->skipBytesInternal(Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;I)I

    move-result v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Couldn\'t skip bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-void
.end method
