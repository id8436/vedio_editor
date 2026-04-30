.class public Lcom/google/gdata/util/NotImplementedException;
.super Lcom/google/gdata/util/ServiceException;
.source "NotImplementedException.java"


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 54
    invoke-direct {p0}, Lcom/google/gdata/util/NotImplementedException;->initResponseCode()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 60
    invoke-direct {p0}, Lcom/google/gdata/util/NotImplementedException;->initResponseCode()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/google/gdata/util/NotImplementedException;->initResponseCode()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-direct {p0}, Lcom/google/gdata/util/NotImplementedException;->initResponseCode()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    invoke-direct {p0}, Lcom/google/gdata/util/NotImplementedException;->initResponseCode()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 49
    invoke-direct {p0}, Lcom/google/gdata/util/NotImplementedException;->initResponseCode()V

    .line 50
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x1f5

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/NotImplementedException;->setHttpErrorCodeOverride(I)V

    .line 65
    return-void
.end method
