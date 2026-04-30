.class public Lcom/behance/sdk/exception/BehanceSDKProjectParseException;
.super Ljava/lang/Exception;
.source "BehanceSDKProjectParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x2dcdb50d08952a96L


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
