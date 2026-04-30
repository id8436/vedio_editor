.class public Lorg/mortbay/io/Portable;
.super Ljava/lang/Object;
.source "Portable.java"


# static fields
.field public static final ALL_INTERFACES:Ljava/lang/String; = "0.0.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arraycopy([BI[BII)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-void
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 42
    :try_start_0
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static throwNotSupported()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not Supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
