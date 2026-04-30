.class public final Lcom/adobe/customextractor/Util/RollingSampleBuffer;
.super Ljava/lang/Object;
.source "RollingSampleBuffer.java"


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

.field private final dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/adobe/customextractor/Util/Allocate/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private final extrasHolder:Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

.field private final infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

.field private lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

.field private lastAllocationOffset:I

.field private final scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

.field private totalBytesDropped:J

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/adobe/customextractor/Util/Allocate/Allocator;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    .line 42
    invoke-interface {p1}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    .line 43
    new-instance v0, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-direct {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    .line 44
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 45
    new-instance v0, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;-><init>(Lcom/adobe/customextractor/Util/RollingSampleBuffer$1;)V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->extrasHolder:Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

    .line 46
    new-instance v0, Lcom/adobe/customextractor/Util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    .line 47
    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    iput v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 48
    return-void
.end method

.method private dropDownstreamTo(J)V
    .locals 9

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 306
    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    div-int v2, v0, v1

    .line 309
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 310
    iget-object v3, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    invoke-interface {v3, v0}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->release(Lcom/adobe/customextractor/Util/Allocate/Allocation;)V

    .line 311
    iget-wide v4, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method private dropUpstreamFrom(J)V
    .locals 5

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 92
    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    div-int v1, v0, v1

    .line 93
    iget v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    rem-int v2, v0, v2

    .line 95
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 96
    if-nez v2, :cond_2

    .line 98
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 101
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 102
    iget-object v4, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    invoke-interface {v4, v0}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->release(Lcom/adobe/customextractor/Util/Allocate/Allocation;)V

    .line 101
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 106
    if-nez v2, :cond_1

    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    :goto_2
    iput v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 107
    return-void

    :cond_1
    move v0, v2

    .line 106
    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private static ensureCapacity(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->limit()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 320
    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->reset([BI)V

    .line 322
    :cond_0
    return-void
.end method

.method private ensureSpaceForWrite()V
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    if-ne v0, v1, :cond_0

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 418
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    invoke-interface {v0}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->allocate()Lcom/adobe/customextractor/Util/Allocate/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 419
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    return-void
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 5

    .prologue
    .line 264
    .line 265
    :goto_0
    if-lez p4, :cond_0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 267
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 268
    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    sub-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 270
    iget-object v3, v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    invoke-virtual {v0, v1}, Lcom/adobe/customextractor/Util/Allocate/Allocation;->translateOffset(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 271
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 272
    sub-int/2addr p4, v2

    .line 273
    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method private readData(J[BI)V
    .locals 7

    .prologue
    .line 285
    const/4 v0, 0x0

    move v1, v0

    .line 286
    :goto_0
    if-ge v1, p4, :cond_0

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 288
    iget-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 289
    sub-int v0, p4, v1

    iget v3, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 290
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 291
    iget-object v4, v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    invoke-virtual {v0, v2}, Lcom/adobe/customextractor/Util/Allocate/Allocation;->translateOffset(I)I

    move-result v0

    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 294
    add-int v0, v1, v3

    move v1, v0

    .line 295
    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method private readEncryptionData(Lcom/adobe/customextractor/Util/SampleHolder;Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 195
    iget-wide v0, p2, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    .line 198
    iget-object v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v2, v2, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readData(J[BI)V

    .line 199
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 200
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v0, v0, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    aget-byte v1, v0, v4

    .line 201
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_5

    move v0, v6

    .line 202
    :goto_0
    and-int/lit8 v1, v1, 0x7f

    .line 205
    iget-object v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v5, v5, Lcom/adobe/customextractor/Util/CryptoInfo;->iv:[B

    if-nez v5, :cond_0

    .line 206
    iget-object v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/adobe/customextractor/Util/CryptoInfo;->iv:[B

    .line 208
    :cond_0
    iget-object v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v5, v5, Lcom/adobe/customextractor/Util/CryptoInfo;->iv:[B

    invoke-direct {p0, v2, v3, v5, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readData(J[BI)V

    .line 209
    int-to-long v8, v1

    add-long/2addr v2, v8

    .line 213
    if-eqz v0, :cond_6

    .line 214
    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v1, v1, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readData(J[BI)V

    .line 215
    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    .line 216
    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v1, v4}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 217
    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    move-wide v8, v2

    .line 223
    :goto_1
    iget-object v2, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v2, v2, Lcom/adobe/customextractor/Util/CryptoInfo;->numBytesOfClearData:[I

    .line 224
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, v1, :cond_2

    .line 225
    :cond_1
    new-array v2, v1, [I

    .line 227
    :cond_2
    iget-object v3, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v3, v3, Lcom/adobe/customextractor/Util/CryptoInfo;->numBytesOfEncryptedData:[I

    .line 228
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ge v5, v1, :cond_4

    .line 229
    :cond_3
    new-array v3, v1, [I

    .line 231
    :cond_4
    if-eqz v0, :cond_7

    .line 232
    mul-int/lit8 v0, v1, 0x6

    .line 233
    iget-object v5, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-static {v5, v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->ensureCapacity(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V

    .line 234
    iget-object v5, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    iget-object v5, v5, Lcom/adobe/customextractor/Util/ParsableByteArray;->data:[B

    invoke-direct {p0, v8, v9, v5, v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readData(J[BI)V

    .line 235
    int-to-long v10, v0

    add-long/2addr v8, v10

    .line 236
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lcom/adobe/customextractor/Util/ParsableByteArray;->setPosition(I)V

    .line 237
    :goto_2
    if-ge v4, v1, :cond_8

    .line 238
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    aput v0, v2, v4

    .line 239
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->scratch:Lcom/adobe/customextractor/Util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    aput v0, v3, v4

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    .line 201
    goto :goto_0

    :cond_6
    move v1, v6

    move-wide v8, v2

    .line 219
    goto :goto_1

    .line 242
    :cond_7
    aput v4, v2, v4

    .line 243
    iget v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    iget-wide v10, p2, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    sub-long v10, v8, v10

    long-to-int v5, v10

    sub-int/2addr v0, v5

    aput v0, v3, v4

    .line 247
    :cond_8
    iget-object v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v4, p2, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->encryptionKeyId:[B

    iget-object v5, p1, Lcom/adobe/customextractor/Util/SampleHolder;->cryptoInfo:Lcom/adobe/customextractor/Util/CryptoInfo;

    iget-object v5, v5, Lcom/adobe/customextractor/Util/CryptoInfo;->iv:[B

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/customextractor/Util/CryptoInfo;->set(I[I[I[B[BI)V

    .line 251
    iget-wide v0, p2, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    .line 252
    iget-wide v2, p2, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    .line 253
    iget v1, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    sub-int v0, v1, v0

    iput v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    .line 254
    return-void
.end method


# virtual methods
.method public appendData(Lcom/adobe/customextractor/DataSource/DataSource;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 345
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->ensureSpaceForWrite()V

    .line 346
    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    iget v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    sub-int/2addr v0, v2

    .line 347
    if-eq p2, v1, :cond_0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget-object v2, v2, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    iget-object v3, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v4, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 351
    invoke-virtual {v3, v4}, Lcom/adobe/customextractor/Util/Allocate/Allocation;->translateOffset(I)I

    move-result v3

    .line 350
    invoke-interface {p1, v2, v3, v0}, Lcom/adobe/customextractor/DataSource/DataSource;->read([BII)I

    move-result v0

    .line 352
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 358
    :goto_0
    return v0

    .line 356
    :cond_1
    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 357
    iget-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    goto :goto_0
.end method

.method public appendData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->ensureSpaceForWrite()V

    .line 371
    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget-object v1, v1, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    iget-object v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v3, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v2, v3}, Lcom/adobe/customextractor/Util/Allocate/Allocation;->translateOffset(I)I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lcom/adobe/customextractor/extractor/Input/ExtractorInput;->readFully([BII)V

    .line 374
    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 375
    iget-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    .line 376
    return v0
.end method

.method public appendData(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V
    .locals 5

    .prologue
    .line 386
    move v0, p2

    .line 387
    :goto_0
    if-lez v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->ensureSpaceForWrite()V

    .line 389
    iget v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    iget v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget-object v2, v2, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    iget-object v3, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v4, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    invoke-virtual {v3, v4}, Lcom/adobe/customextractor/Util/Allocate/Allocation;->translateOffset(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Lcom/adobe/customextractor/Util/ParsableByteArray;->readBytes([BII)V

    .line 392
    iget v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 393
    sub-int/2addr v0, v1

    .line 394
    goto :goto_0

    .line 395
    :cond_0
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    .line 396
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->clear()V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocator:Lcom/adobe/customextractor/Util/Allocate/Allocator;

    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    invoke-interface {v1, v0}, Lcom/adobe/customextractor/Util/Allocate/Allocator;->release(Lcom/adobe/customextractor/Util/Allocate/Allocation;)V

    goto :goto_0

    .line 60
    :cond_0
    iput-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesDropped:J

    .line 61
    iput-wide v2, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocation:Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 63
    iget v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->allocationLength:I

    iput v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->lastAllocationOffset:I

    .line 64
    return-void
.end method

.method public commitSample(JIJI[B)V
    .locals 8

    .prologue
    .line 409
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->commitSample(JIJI[B)V

    .line 410
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    .line 80
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dropUpstreamFrom(J)V

    .line 81
    return-void
.end method

.method public getReadIndex()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public getWritePosition()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->totalBytesWritten:J

    return-wide v0
.end method

.method public peekSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->extrasHolder:Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    return v0
.end method

.method public readSample(Lcom/adobe/customextractor/Util/SampleHolder;)Z
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->extrasHolder:Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->peekSample(Lcom/adobe/customextractor/Util/SampleHolder;Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/customextractor/Util/SampleHolder;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->extrasHolder:Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

    invoke-direct {p0, p1, v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readEncryptionData(Lcom/adobe/customextractor/Util/SampleHolder;Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;)V

    .line 172
    :cond_1
    iget-object v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    if-ge v0, v1, :cond_3

    .line 173
    :cond_2
    iget v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    invoke-virtual {p1, v0}, Lcom/adobe/customextractor/Util/SampleHolder;->replaceBuffer(I)Z

    .line 175
    :cond_3
    iget-object v0, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->extrasHolder:Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;

    iget-wide v0, v0, Lcom/adobe/customextractor/Util/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    iget-object v2, p1, Lcom/adobe/customextractor/Util/SampleHolder;->data:Ljava/nio/ByteBuffer;

    iget v3, p1, Lcom/adobe/customextractor/Util/SampleHolder;->size:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->readData(JLjava/nio/ByteBuffer;I)V

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->moveToNextSample()J

    move-result-wide v0

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public skipSample()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->moveToNextSample()J

    move-result-wide v0

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 137
    return-void
.end method

.method public skipToKeyframeBefore(J)Z
    .locals 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->infoQueue:Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/customextractor/Util/RollingSampleBuffer$InfoQueue;->skipToKeyframeBefore(J)J

    move-result-wide v0

    .line 147
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/adobe/customextractor/Util/RollingSampleBuffer;->dropDownstreamTo(J)V

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method
