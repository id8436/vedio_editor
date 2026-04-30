.class public Lcom/google/gdata/util/ParseException;
.super Lcom/google/gdata/util/ServiceException;
.source "ParseException.java"


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 46
    invoke-direct {p0}, Lcom/google/gdata/util/ParseException;->initResponseCode()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 51
    invoke-direct {p0}, Lcom/google/gdata/util/ParseException;->initResponseCode()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/google/gdata/util/ParseException;->initResponseCode()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-direct {p0}, Lcom/google/gdata/util/ParseException;->initResponseCode()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    invoke-direct {p0}, Lcom/google/gdata/util/ParseException;->initResponseCode()V

    .line 42
    return-void
.end method

.method private initResponseCode()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/ParseException;->setHttpErrorCodeOverride(I)V

    .line 56
    return-void
.end method
