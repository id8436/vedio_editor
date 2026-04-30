.class public Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;
.super Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;
.source "AdobeBehanceSDKPublishProjectOptions.java"


# instance fields
.field private mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-direct {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKAbstractPublishOptions;-><init>(Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;)V

    .line 27
    invoke-virtual {p0}, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->getBehanceSDKPublishOptions()Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    iput-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    .line 28
    return-void
.end method


# virtual methods
.method public getCCAssetBrowserDisabled()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->isCCAssetBrowserDisabled()Z

    move-result v0

    return v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjectFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getCreativeFieldDTOs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProjectImages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectImageModules()Ljava/util/List;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 48
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    return-object v1
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPublishProjectWorkflowOptions()Lcom/behance/sdk/BehanceSDKPublishProjectOptions;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    return-object v0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->isProjectContainsAdultContent()Z

    move-result v0

    return v0
.end method

.method public setCCAssetBrowserDisabled(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setCCAssetBrowserDisabled(Ljava/lang/Boolean;)V

    .line 62
    return-void
.end method

.method public setProjectContainsAdultContent(Z)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setProjectContainsAdultContent(Z)V

    .line 134
    return-void
.end method

.method public setProjectDescription(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setProjectDescription(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setProjectFields(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setCreativeFieldDTOs(Ljava/util/List;)V

    .line 153
    return-void
.end method

.method public setProjectTags(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setProjectTags(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceSDKPublishProjectOptions;->mBehanceSDKPublishProjectOptions:Lcom/behance/sdk/BehanceSDKPublishProjectOptions;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setProjectTitle(Ljava/lang/String;)V

    .line 86
    return-void
.end method
