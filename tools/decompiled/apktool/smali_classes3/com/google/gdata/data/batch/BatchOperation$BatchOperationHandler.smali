.class Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "BatchOperation.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/batch/BatchOperation;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/batch/BatchOperation;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchOperation$BatchOperationHandler;->this$0:Lcom/google/gdata/data/batch/BatchOperation;

    .line 107
    const-class v0, Lcom/google/gdata/data/batch/BatchOperation;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 108
    const-string/jumbo v0, "type"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/google/gdata/data/batch/BatchOperationType;->forName(Ljava/lang/String;)Lcom/google/gdata/data/batch/BatchOperationType;

    move-result-object v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidBatchOperationType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid type for batch:operation: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 115
    throw v1

    .line 117
    :cond_0
    invoke-static {p1, v1}, Lcom/google/gdata/data/batch/BatchOperation;->access$002(Lcom/google/gdata/data/batch/BatchOperation;Lcom/google/gdata/data/batch/BatchOperationType;)Lcom/google/gdata/data/batch/BatchOperationType;

    .line 118
    return-void
.end method
