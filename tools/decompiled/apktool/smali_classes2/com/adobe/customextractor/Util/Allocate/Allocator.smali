.class public interface abstract Lcom/adobe/customextractor/Util/Allocate/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# virtual methods
.method public abstract allocate()Lcom/adobe/customextractor/Util/Allocate/Allocation;
.end method

.method public abstract blockWhileTotalBytesAllocatedExceeds(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract getTotalBytesAllocated()I
.end method

.method public abstract release(Lcom/adobe/customextractor/Util/Allocate/Allocation;)V
.end method

.method public abstract totalBytesAllocatedExceeds(I)Z
.end method

.method public abstract trim(I)V
.end method
