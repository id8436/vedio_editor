.class public final Lcom/google/android/exoplayer/upstream/DataSourceStream;
.super Ljava/lang/Object;
.source "DataSourceStream.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;
.implements Lcom/google/android/exoplayer/upstream/NonBlockingInputStream;


# static fields
.field private static final CHUNKED_ALLOCATION_INCREMENT:I = 0x40000


# instance fields
.field private allocation:Lcom/google/android/exoplayer/upstream/Allocation;

.field private final allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private volatile loadCanceled:Z

.field private volatile loadPosition:J

.field private final readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

.field private volatile resolvedLength:J

.field private writeFragmentIndex:I

.field private writeFragmentOffset:I

.field private writeFragmentRemainingLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-wide v0, p2, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 71
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 72
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    .line 74
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;-><init>(Lcom/google/android/exoplayer/upstream/DataSourceStream$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    .line 75
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeMoreToLoad()Z
    .locals 4

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private read(Ljava/nio/ByteBuffer;[BILcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const/4 v0, -0x1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$100(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    int-to-long v4, p5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 167
    if-eqz v2, :cond_0

    .line 170
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$100(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v1

    if-nez v1, :cond_2

    .line 171
    invoke-static {p4, v0}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$202(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 172
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentOffset(I)I

    move-result v1

    invoke-static {p4, v1}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$302(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentLength(I)I

    move-result v1

    invoke-static {p4, v1}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$402(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/Allocation;->getBuffers()[[B

    move-result-object v3

    move v1, v0

    move v0, p3

    .line 177
    :goto_1
    if-ge v1, v2, :cond_6

    .line 178
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$400(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v4

    if-nez v4, :cond_3

    .line 179
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$208(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    .line 180
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$200(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentOffset(I)I

    move-result v4

    invoke-static {p4, v4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$302(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 181
    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$200(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentLength(I)I

    move-result v4

    invoke-static {p4, v4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$402(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 183
    :cond_3
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$400(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v4

    sub-int v5, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 184
    if-eqz p1, :cond_5

    .line 185
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$200(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$300(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v6

    invoke-virtual {p1, v5, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 191
    :cond_4
    :goto_2
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$100(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {p4, v5}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$102(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 192
    add-int/2addr v1, v4

    .line 193
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$300(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {p4, v5}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$302(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    .line 194
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$400(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    sub-int v4, v5, v4

    invoke-static {p4, v4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$402(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    goto :goto_1

    .line 186
    :cond_5
    if-eqz p2, :cond_4

    .line 187
    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$200(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v5

    aget-object v5, v3, v5

    invoke-static {p4}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$300(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v6

    invoke-static {v5, v6, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    add-int/2addr v0, v4

    goto :goto_2

    :cond_6
    move v0, v1

    .line 197
    goto/16 :goto_0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadCanceled:Z

    .line 205
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocation;->release()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 140
    :cond_0
    return-void
.end method

.method public getAvailableByteCount()J
    .locals 4

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    invoke-static {v2}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$100(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getLength()J
    .locals 4

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v0, v0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    goto :goto_0
.end method

.method public getLoadPosition()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    return-wide v0
.end method

.method public getReadPosition()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$100(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isEndOfStream()Z
    .locals 4

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->access$100(Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadCanceled:Z

    return v0
.end method

.method public isLoadFinished()Z
    .locals 4

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/high16 v7, 0x40000

    const-wide/16 v8, -0x1

    .line 214
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadCanceled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->isLoadFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 223
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    .line 224
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 225
    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSourceStream$DataSourceStreamLoadException;

    new-instance v3, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v4, v4, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/upstream/DataSourceStream$DataSourceStreamLoadException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->closeQuietly(Lcom/google/android/exoplayer/upstream/DataSource;)V

    .line 281
    throw v0

    .line 228
    :cond_2
    :try_start_1
    iput-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    .line 237
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    if-nez v0, :cond_3

    .line 238
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    long-to-int v0, v0

    .line 240
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->allocate(I)Lcom/google/android/exoplayer/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocation;->capacity()I

    move-result v2

    .line 244
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_4

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentIndex:I

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentOffset:I

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentLength(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentRemainingLength:I

    .line 250
    :cond_4
    const v1, 0x7fffffff

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocation;->getBuffers()[[B

    move-result-object v0

    move v14, v1

    move v1, v2

    move v2, v14

    .line 252
    :cond_5
    :goto_3
    iget-boolean v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadCanceled:Z

    if-nez v3, :cond_d

    if-lez v2, :cond_d

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->maybeMoreToLoad()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 253
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 254
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 230
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    sub-long v4, v0, v2

    .line 232
    :goto_4
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    add-long/2addr v2, v10

    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v6, v6, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    goto :goto_1

    :cond_7
    move-wide v4, v8

    .line 230
    goto :goto_4

    :cond_8
    move v0, v7

    .line 238
    goto :goto_2

    .line 256
    :cond_9
    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentIndex:I

    aget-object v3, v0, v3

    iget v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentOffset:I

    iget v5, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentRemainingLength:I

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v2

    .line 258
    if-lez v2, :cond_b

    .line 259
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    int-to-long v10, v2

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    .line 260
    iget v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentOffset:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentOffset:I

    .line 261
    iget v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentRemainingLength:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentRemainingLength:I

    .line 262
    iget v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentRemainingLength:I

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->maybeMoreToLoad()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 263
    iget v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentIndex:I

    .line 264
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    int-to-long v10, v1

    cmp-long v3, v4, v10

    if-nez v3, :cond_a

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    add-int/2addr v1, v7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;->ensureCapacity(I)V

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocation;->capacity()I

    move-result v1

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocation;->getBuffers()[[B

    move-result-object v0

    .line 269
    :cond_a
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentIndex:I

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentOffset(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentOffset:I

    .line 270
    iget-object v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->allocation:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentIndex:I

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->getFragmentLength(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->writeFragmentRemainingLength:I

    goto/16 :goto_3

    .line 272
    :cond_b
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_c

    .line 273
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    iput-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    goto/16 :goto_3

    .line 274
    :cond_c
    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_5

    .line 275
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSourceStream$DataSourceStreamLoadException;

    new-instance v1, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->resolvedLength:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->loadPosition:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer/upstream/UnexpectedLengthException;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/DataSourceStream$DataSourceStreamLoadException;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->closeQuietly(Lcom/google/android/exoplayer/upstream/DataSource;)V

    goto/16 :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 6

    .prologue
    .line 149
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->read(Ljava/nio/ByteBuffer;[BILcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    .prologue
    .line 154
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->read(Ljava/nio/ByteBuffer;[BILcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    move-result v0

    return v0
.end method

.method public resetReadPosition()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;->reset()V

    .line 82
    return-void
.end method

.method public skip(I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/exoplayer/upstream/DataSourceStream;->readHead:Lcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;

    move-object v0, p0

    move-object v2, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/DataSourceStream;->read(Ljava/nio/ByteBuffer;[BILcom/google/android/exoplayer/upstream/DataSourceStream$ReadHead;I)I

    move-result v0

    return v0
.end method
