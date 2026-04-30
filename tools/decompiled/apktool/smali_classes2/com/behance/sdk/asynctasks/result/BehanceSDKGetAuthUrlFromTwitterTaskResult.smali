.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;
.super Ljava/lang/Object;
.source "BehanceSDKGetAuthUrlFromTwitterTaskResult.java"


# instance fields
.field private authURL:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private exceptionOccurred:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->authURL:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public isExceptionOccurred()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->exceptionOccurred:Z

    return v0
.end method

.method public setAuthURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->authURL:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->exception:Ljava/lang/Exception;

    .line 23
    return-void
.end method

.method public setExceptionOccurred(Z)V
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetAuthUrlFromTwitterTaskResult;->exceptionOccurred:Z

    .line 15
    return-void
.end method
