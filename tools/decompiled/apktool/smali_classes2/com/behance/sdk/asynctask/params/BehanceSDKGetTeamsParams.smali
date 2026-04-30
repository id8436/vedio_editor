.class public Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKGetTeamsParams.java"


# instance fields
.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetTeamsParams;->searchString:Ljava/lang/String;

    .line 17
    return-void
.end method
