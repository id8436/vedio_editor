.class public Lcom/behance/sdk/exception/BehanceSDKException;
.super Ljava/lang/Exception;
.source "BehanceSDKException.java"


# static fields
.field private static final serialVersionUID:J = 0x3de6d3aaec4d8f9eL


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput p1, p0, Lcom/behance/sdk/exception/BehanceSDKException;->errorCode:I

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lcom/behance/sdk/exception/BehanceSDKException;->errorCode:I

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput p1, p0, Lcom/behance/sdk/exception/BehanceSDKException;->errorCode:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 45
    iput p1, p0, Lcom/behance/sdk/exception/BehanceSDKException;->errorCode:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/behance/sdk/exception/BehanceSDKException;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/behance/sdk/exception/BehanceSDKException;->errorCode:I

    .line 54
    return-void
.end method
