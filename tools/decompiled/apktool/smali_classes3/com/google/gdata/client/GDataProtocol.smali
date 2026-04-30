.class public Lcom/google/gdata/client/GDataProtocol;
.super Ljava/lang/Object;
.source "GDataProtocol.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWeakEtag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 300
    if-eqz p0, :cond_0

    const-string/jumbo v0, "W/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
