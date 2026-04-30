.class public Lcom/adobe/creativesdk/foundation/internal/util/AdobeCSDKErrorUtils;
.super Ljava/lang/Object;
.source "AdobeCSDKErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyArgument(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method public static verifyArgumentNotNil(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    if-nez p0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    return-void
.end method
