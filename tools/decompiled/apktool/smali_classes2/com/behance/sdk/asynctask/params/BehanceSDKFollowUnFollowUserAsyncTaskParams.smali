.class public Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKFollowUnFollowUserAsyncTaskParams.java"


# instance fields
.field private followUser:Z

.field private pos:I

.field private userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->pos:I

    return v0
.end method

.method public getUserDTO()Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    return-object v0
.end method

.method public isFollowUser()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->followUser:Z

    return v0
.end method

.method public setFollowUser(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->followUser:Z

    .line 41
    return-void
.end method

.method public setPos(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->pos:I

    .line 57
    return-void
.end method

.method public setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->userDTO:Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;

    .line 49
    return-void
.end method
