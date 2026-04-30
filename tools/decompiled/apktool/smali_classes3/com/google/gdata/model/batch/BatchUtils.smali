.class public Lcom/google/gdata/model/batch/BatchUtils;
.super Ljava/lang/Object;
.source "BatchUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchId(Lcom/google/gdata/data/IEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    instance-of v0, p0, Lcom/google/gdata/model/atom/Entry;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/google/gdata/model/atom/Entry;

    invoke-static {p0}, Lcom/google/gdata/model/batch/BatchId;->getIdFrom(Lcom/google/gdata/model/Element;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/gdata/data/BaseEntry;

    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchId(Lcom/google/gdata/data/BaseEntry;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatchOperationType(Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 79
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Lcom/google/gdata/model/Element;

    invoke-static {p0}, Lcom/google/gdata/model/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/model/Element;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatchOperationType(Lcom/google/gdata/data/IFeed;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 95
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, Lcom/google/gdata/model/Element;

    invoke-static {p0}, Lcom/google/gdata/model/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/model/Element;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    goto :goto_0
.end method

.method private static getBatchOperationType(Lcom/google/gdata/model/Element;)Lcom/google/gdata/data/batch/BatchOperationType;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/batch/BatchOperation;

    .line 109
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/batch/BatchOperation;->getType()Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInterrupted(Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/batch/IBatchInterrupted;
    .locals 1

    .prologue
    .line 159
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    .line 160
    check-cast p0, Lcom/google/gdata/model/Element;

    sget-object v0, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/IBatchInterrupted;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchInterrupted(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchInterrupted;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRequiredBatchStatusCode(Lcom/google/gdata/data/IEntry;)I
    .locals 2

    .prologue
    .line 219
    invoke-static {p0}, Lcom/google/gdata/model/batch/BatchUtils;->getStatus(Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/batch/IBatchStatus;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a batch response entry; Missing BatchStatus extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    invoke-interface {v0}, Lcom/google/gdata/data/batch/IBatchStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public static getStatus(Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/batch/IBatchStatus;
    .locals 1

    .prologue
    .line 175
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    .line 176
    check-cast p0, Lcom/google/gdata/model/Element;

    sget-object v0, Lcom/google/gdata/model/batch/BatchStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/IBatchStatus;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchStatus(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static isFailure(Lcom/google/gdata/data/IEntry;)Z
    .locals 1

    .prologue
    .line 215
    invoke-static {p0}, Lcom/google/gdata/model/batch/BatchUtils;->isSuccess(Lcom/google/gdata/data/IEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuccess(Lcom/google/gdata/data/IEntry;)Z
    .locals 2

    .prologue
    .line 195
    invoke-static {p0}, Lcom/google/gdata/model/batch/BatchUtils;->getRequiredBatchStatusCode(Lcom/google/gdata/data/IEntry;)I

    move-result v0

    .line 196
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBatchId(Lcom/google/gdata/data/IEntry;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_1

    .line 63
    check-cast p0, Lcom/google/gdata/model/Element;

    sget-object v1, Lcom/google/gdata/model/batch/BatchId;->KEY:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 69
    :goto_1
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/google/gdata/model/batch/BatchId;

    invoke-direct {v0, p1}, Lcom/google/gdata/model/batch/BatchId;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0, p1}, Lcom/google/gdata/data/batch/BatchUtils;->setBatchId(Lcom/google/gdata/data/ExtensionPoint;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setBatchOperationType(Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 1

    .prologue
    .line 120
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Lcom/google/gdata/model/Element;

    invoke-static {p0, p1}, Lcom/google/gdata/model/batch/BatchUtils;->setBatchOperationType(Lcom/google/gdata/model/Element;Lcom/google/gdata/data/batch/BatchOperationType;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0, p1}, Lcom/google/gdata/data/batch/BatchUtils;->setBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/batch/BatchOperationType;)V

    goto :goto_0
.end method

.method public static setBatchOperationType(Lcom/google/gdata/data/IFeed;Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 1

    .prologue
    .line 135
    instance-of v0, p0, Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    .line 136
    check-cast p0, Lcom/google/gdata/model/Element;

    invoke-static {p0, p1}, Lcom/google/gdata/model/batch/BatchUtils;->setBatchOperationType(Lcom/google/gdata/model/Element;Lcom/google/gdata/data/batch/BatchOperationType;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    check-cast p0, Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {p0, p1}, Lcom/google/gdata/data/batch/BatchUtils;->setBatchOperationType(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/batch/BatchOperationType;)V

    goto :goto_0
.end method

.method private static setBatchOperationType(Lcom/google/gdata/model/Element;Lcom/google/gdata/data/batch/BatchOperationType;)V
    .locals 2

    .prologue
    .line 148
    sget-object v1, Lcom/google/gdata/model/batch/BatchOperation;->KEY:Lcom/google/gdata/model/ElementKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 150
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/google/gdata/model/batch/BatchOperation;

    invoke-direct {v0, p1}, Lcom/google/gdata/model/batch/BatchOperation;-><init>(Lcom/google/gdata/data/batch/BatchOperationType;)V

    goto :goto_0
.end method

.method public static throwIfInterrupted(Lcom/google/gdata/data/IFeed;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/client/batch/BatchInterruptedException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-interface {p0}, Lcom/google/gdata/data/IFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    if-lez v0, :cond_2

    .line 239
    invoke-interface {p0}, Lcom/google/gdata/data/IFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/IEntry;

    .line 242
    instance-of v1, v0, Lcom/google/gdata/model/atom/Entry;

    if-eqz v1, :cond_0

    .line 243
    check-cast v0, Lcom/google/gdata/model/atom/Entry;

    move-object v1, p0

    .line 244
    check-cast v1, Lcom/google/gdata/data/Feed;

    .line 245
    sget-object v1, Lcom/google/gdata/model/batch/BatchInterrupted;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/batch/IBatchInterrupted;

    .line 255
    :goto_0
    if-eqz v0, :cond_2

    .line 256
    new-instance v1, Lcom/google/gdata/client/batch/BatchInterruptedException;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/client/batch/BatchInterruptedException;-><init>(Lcom/google/gdata/data/IFeed;Lcom/google/gdata/data/batch/IBatchInterrupted;)V

    throw v1

    .line 246
    :cond_0
    instance-of v1, v0, Lcom/google/gdata/data/BaseEntry;

    if-eqz v1, :cond_1

    .line 247
    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    move-object v1, p0

    .line 248
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .line 249
    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchUtils;->getBatchInterrupted(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/batch/BatchInterrupted;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized entry type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_2
    return-void
.end method
