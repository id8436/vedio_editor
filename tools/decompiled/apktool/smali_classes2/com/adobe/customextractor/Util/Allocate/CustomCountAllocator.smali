.class public final Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;
.super Ljava/lang/Object;
.source "CustomCountAllocator.java"

# interfaces
.implements Lcom/adobe/customextractor/Util/Allocate/Allocator;


# static fields
.field private static final INITIAL_RECYCLED_ALLOCATION_CAPACITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CustomCountAllocator"


# instance fields
.field private allocatedCount:I

.field private final individualAllocationSize:I

.field private recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

.field private recycledCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 25
    iput p1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->individualAllocationSize:I

    .line 26
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 27
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/adobe/customextractor/Util/Allocate/Allocation;
    .locals 3

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    .line 32
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/customextractor/Util/Allocate/Allocation;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blockWhileTotalBytesAllocatedExceeds(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    if-le v0, p1, :cond_0

    .line 72
    const-string/jumbo v0, "CustomCountAllocator"

    const-string/jumbo v1, "Blocking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/adobe/customextractor/Util/Allocate/Allocation;)V
    .locals 3

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->individualAllocationSize:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 39
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    .line 40
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    aput-object p1, v0, v1

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public totalBytesAllocatedExceeds(I)Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    if-le v0, p1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized trim(I)V
    .locals 4

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->individualAllocationSize:I

    invoke-static {p1, v0}, Lcom/adobe/customextractor/Util/Utilities;->ceilDivide(II)I

    move-result v0

    .line 51
    const/4 v1, 0x0

    iget v2, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->allocatedCount:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 52
    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v2, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 54
    iput v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomCountAllocator;->recycledCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
