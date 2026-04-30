.class public Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;
.super Ljava/lang/Object;
.source "BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse.java"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->exception:Ljava/lang/Exception;

    .line 35
    return-void
.end method

.method public setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/behance/sdk/asynctasks/result/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskResponse;->userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 43
    return-void
.end method
