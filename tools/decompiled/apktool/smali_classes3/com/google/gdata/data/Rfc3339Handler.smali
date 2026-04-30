.class public Lcom/google/gdata/data/Rfc3339Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Rfc3339Handler.java"


# instance fields
.field private dateTime:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/gdata/data/Rfc3339Handler;->dateTime:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public processEndElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/Rfc3339Handler;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/Rfc3339Handler;->dateTime:Lcom/google/gdata/data/DateTime;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidDatetime:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid date/time format: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gdata/data/Rfc3339Handler;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
.end method
