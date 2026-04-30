.class public final Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;
.super Ljava/lang/Object;
.source "CustomAllocator.java"

# interfaces
.implements Lcom/adobe/customextractor/Util/Allocate/Allocator;


# static fields
.field private static final INITIAL_RECYCLED_ALLOCATION_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private final individualAllocationSize:I

.field private recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

.field private recycledCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 27
    iput p1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->individualAllocationSize:I

    .line 28
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 29
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/adobe/customextractor/Util/Allocate/Allocation;
    .locals 3

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->allocatedCount:I

    .line 34
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/customextractor/Util/Allocate/Allocation;-><init>([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blockWhileTotalBytesAllocatedExceeds(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->getTotalBytesAllocated()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->allocatedCount:I

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->individualAllocationSize:I
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
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/adobe/customextractor/Util/Allocate/Allocation;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->individualAllocationSize:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/adobe/customextractor/Assertions;->checkArgument(Z)V

    .line 42
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->allocatedCount:I

    .line 43
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget-object v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iput-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    aput-object p1, v0, v1

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 41
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
    .line 85
    invoke-virtual {p0}, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->getTotalBytesAllocated()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized trim(I)V
    .locals 4

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->individualAllocationSize:I

    invoke-static {p1, v0}, Lcom/adobe/customextractor/Util/Utilities;->ceilDivide(II)I

    move-result v0

    .line 54
    const/4 v1, 0x0

    iget v2, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->allocatedCount:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 55
    iget v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledAllocations:[Lcom/adobe/customextractor/Util/Allocate/Allocation;

    iget v2, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 57
    iput v0, p0, Lcom/adobe/customextractor/Util/Allocate/CustomAllocator;->recycledCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
