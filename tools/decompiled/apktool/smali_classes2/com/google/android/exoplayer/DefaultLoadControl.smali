.class public Lcom/google/android/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/google/android/exoplayer/LoadControl;


# static fields
.field private static final ABOVE_HIGH_WATERMARK:I = 0x0

.field private static final BELOW_LOW_WATERMARK:I = 0x2

.field private static final BETWEEN_WATERMARKS:I = 0x1

.field public static final DEFAULT_HIGH_POOL_LOAD:F = 0.8f

.field public static final DEFAULT_HIGH_WATERMARK_MS:I = 0x7530

.field public static final DEFAULT_LOW_POOL_LOAD:F = 0.2f

.field public static final DEFAULT_LOW_WATERMARK_MS:I = 0x3a98


# instance fields
.field private final allocator:Lcom/google/android/exoplayer/upstream/Allocator;

.field private bufferPoolState:I

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;

.field private fillingBuffers:Z

.field private final highPoolLoad:F

.field private final highWatermarkUs:J

.field private final loaderStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;",
            ">;"
        }
    .end annotation
.end field

.field private final loaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final lowPoolLoad:F

.field private final lowWatermarkUs:J

.field private maxLoadStartPositionUs:J

.field private streamingPrioritySet:Z

.field private targetBufferSize:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;Landroid/os/Handler;Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;Landroid/os/Handler;Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;)V
    .locals 8

    .prologue
    .line 103
    const/16 v4, 0x3a98

    const/16 v5, 0x7530

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;Landroid/os/Handler;Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;IIFF)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;Landroid/os/Handler;Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;IIFF)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 128
    iput-object p2, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->eventHandler:Landroid/os/Handler;

    .line 129
    iput-object p3, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->eventListener:Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    .line 132
    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->lowWatermarkUs:J

    .line 133
    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->highWatermarkUs:J

    .line 134
    iput p6, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->lowPoolLoad:F

    .line 135
    iput p7, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->highPoolLoad:F

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/DefaultLoadControl;)Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->eventListener:Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;

    return-object v0
.end method

.method private getBufferPoolState(I)I
    .locals 2

    .prologue
    .line 208
    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 209
    iget v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->highPoolLoad:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->lowPoolLoad:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getLoaderBufferState(JJ)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 197
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    sub-long v2, p3, p1

    .line 201
    iget-wide v4, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->highWatermarkUs:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->lowWatermarkUs:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyLoadingChanged(Z)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->eventListener:Lcom/google/android/exoplayer/DefaultLoadControl$EventListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/DefaultLoadControl$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/DefaultLoadControl$1;-><init>(Lcom/google/android/exoplayer/DefaultLoadControl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_0
    return-void
.end method

.method private updateControlState()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 215
    .line 218
    iget v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->bufferPoolState:I

    move v1, v2

    move v3, v0

    move v4, v2

    move v5, v2

    move v6, v2

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;

    .line 221
    iget-boolean v7, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->loading:Z

    or-int/2addr v6, v7

    .line 222
    iget-boolean v7, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->failed:Z

    or-int/2addr v5, v7

    .line 223
    iget-wide v10, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    cmp-long v7, v10, v12

    if-eqz v7, :cond_0

    move v7, v8

    :goto_1
    or-int/2addr v4, v7

    .line 224
    iget v0, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->bufferState:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v7, v2

    .line 223
    goto :goto_1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_2

    if-eqz v4, :cond_7

    :cond_2
    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    if-ne v3, v8, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-eqz v0, :cond_7

    :cond_3
    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    if-nez v0, :cond_8

    .line 231
    sget-object v0, Lcom/google/android/exoplayer/upstream/NetworkLock;->instance:Lcom/google/android/exoplayer/upstream/NetworkLock;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/upstream/NetworkLock;->add(I)V

    .line 232
    iput-boolean v8, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    .line 233
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer/DefaultLoadControl;->notifyLoadingChanged(Z)V

    .line 240
    :cond_4
    :goto_3
    iput-wide v12, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    .line 241
    iget-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-eqz v0, :cond_9

    .line 242
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;

    .line 245
    iget-wide v0, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    .line 246
    cmp-long v3, v0, v12

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    cmp-long v3, v4, v12

    if-eqz v3, :cond_5

    iget-wide v4, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_6

    .line 248
    :cond_5
    iput-wide v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    .line 242
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v0, v2

    .line 227
    goto :goto_2

    .line 234
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->fillingBuffers:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    .line 235
    sget-object v0, Lcom/google/android/exoplayer/upstream/NetworkLock;->instance:Lcom/google/android/exoplayer/upstream/NetworkLock;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/upstream/NetworkLock;->remove(I)V

    .line 236
    iput-boolean v2, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->streamingPrioritySet:Z

    .line 237
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/DefaultLoadControl;->notifyLoadingChanged(Z)V

    goto :goto_3

    .line 252
    :cond_9
    return-void
.end method


# virtual methods
.method public getAllocator()Lcom/google/android/exoplayer/upstream/Allocator;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    return-object v0
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    .line 143
    return-void
.end method

.method public trimAllocator()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    iget v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocator;->trim(I)V

    .line 156
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;

    .line 149
    iget v1, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    iget v0, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->bufferSizeContribution:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer/DefaultLoadControl;->updateControlState()V

    .line 151
    return-void
.end method

.method public update(Ljava/lang/Object;JJZZ)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/exoplayer/DefaultLoadControl;->getLoaderBufferState(JJ)I

    move-result v4

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->loaderStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;

    .line 169
    iget v3, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->bufferState:I

    if-ne v3, v4, :cond_0

    iget-wide v6, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    cmp-long v3, v6, p4

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->loading:Z

    if-ne v3, p6, :cond_0

    iget-boolean v3, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->failed:Z

    if-eq v3, p7, :cond_5

    :cond_0
    move v3, v1

    .line 172
    :goto_0
    if-eqz v3, :cond_1

    .line 173
    iput v4, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->bufferState:I

    .line 174
    iput-wide p4, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->nextLoadPositionUs:J

    .line 175
    iput-boolean p6, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->loading:Z

    .line 176
    iput-boolean p7, v0, Lcom/google/android/exoplayer/DefaultLoadControl$LoaderState;->failed:Z

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->allocator:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocator;->getAllocatedSize()I

    move-result v4

    .line 181
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;->getBufferPoolState(I)I

    move-result v5

    .line 182
    iget v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->bufferPoolState:I

    if-eq v0, v5, :cond_6

    move v0, v1

    .line 183
    :goto_1
    if-eqz v0, :cond_2

    .line 184
    iput v5, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->bufferPoolState:I

    .line 188
    :cond_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/DefaultLoadControl;->updateControlState()V

    .line 192
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->targetBufferSize:I

    if-ge v4, v0, :cond_7

    const-wide/16 v4, -0x1

    cmp-long v0, p4, v4

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/google/android/exoplayer/DefaultLoadControl;->maxLoadStartPositionUs:J

    cmp-long v0, p4, v4

    if-gtz v0, :cond_7

    move v0, v1

    :goto_2
    return v0

    :cond_5
    move v3, v2

    .line 169
    goto :goto_0

    :cond_6
    move v0, v2

    .line 182
    goto :goto_1

    :cond_7
    move v0, v2

    .line 192
    goto :goto_2
.end method
