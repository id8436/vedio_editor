.class public Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;
.super Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;
.source "BehanceSDKSearchTagsAsyncTaskParams.java"


# instance fields
.field private categories:Ljava/lang/String;

.field private textQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getTextQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->textQuery:Ljava/lang/String;

    return-object v0
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->categories:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTextQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/behance/sdk/asynctask/params/BehanceSDKSearchTagsAsyncTaskParams;->textQuery:Ljava/lang/String;

    .line 25
    return-void
.end method
