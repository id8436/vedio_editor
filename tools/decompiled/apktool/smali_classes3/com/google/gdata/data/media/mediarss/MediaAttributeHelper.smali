.class public Lcom/google/gdata/data/media/mediarss/MediaAttributeHelper;
.super Ljava/lang/Object;
.source "MediaAttributeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeNormalPlayTime(Lcom/google/gdata/data/AttributeHelper;Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->parse(Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidTimeOffset:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid time offset value for attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1
.end method
