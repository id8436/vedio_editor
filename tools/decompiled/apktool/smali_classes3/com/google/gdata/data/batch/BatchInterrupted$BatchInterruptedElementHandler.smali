.class Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "BatchInterrupted.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/batch/BatchInterrupted;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/batch/BatchInterrupted;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 255
    iput-object p1, p0, Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;->this$0:Lcom/google/gdata/data/batch/BatchInterrupted;

    .line 256
    const-class v0, Lcom/google/gdata/data/batch/BatchInterrupted;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 258
    const-string/jumbo v0, "parsed"

    invoke-static {p3, v0, v1}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$100(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$002(Lcom/google/gdata/data/batch/BatchInterrupted;I)I

    .line 259
    const-string/jumbo v0, "success"

    invoke-static {p3, v0, v1}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$100(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$202(Lcom/google/gdata/data/batch/BatchInterrupted;I)I

    .line 260
    const-string/jumbo v0, "error"

    invoke-static {p3, v0, v1}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$100(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$302(Lcom/google/gdata/data/batch/BatchInterrupted;I)I

    .line 261
    const-string/jumbo v0, "reason"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$402(Lcom/google/gdata/data/batch/BatchInterrupted;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    const-string/jumbo v0, "content-type"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_0

    .line 266
    :try_start_0
    new-instance v0, Lcom/google/gdata/util/ContentType;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$502(Lcom/google/gdata/data/batch/BatchInterrupted;Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/util/ContentType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    new-instance v2, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidContentType:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid content type: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 272
    throw v2
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;->this$0:Lcom/google/gdata/data/batch/BatchInterrupted;

    iget-object v1, p0, Lcom/google/gdata/data/batch/BatchInterrupted$BatchInterruptedElementHandler;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/data/batch/BatchInterrupted;->access$602(Lcom/google/gdata/data/batch/BatchInterrupted;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    return-void
.end method
