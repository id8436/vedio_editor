.class public Lcom/behance/sdk/BehanceSDKPublishProjectOptions;
.super Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;
.source "BehanceSDKPublishProjectOptions.java"


# instance fields
.field private ccAssetBrowserDisabled:Z

.field private creativeFieldDTOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field

.field private projectContainsAdultContent:Z

.field private projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field private projectDescription:Ljava/lang/String;

.field private projectImageModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation
.end field

.field private projectTags:Ljava/lang/String;

.field private projectTitle:Ljava/lang/String;


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
    .line 43
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->ccAssetBrowserDisabled:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->setProjectImageModules(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method private setProjectImageModules(Ljava/util/List;)V
    .locals 3
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
    .line 62
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectImageModules:Ljava/util/List;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 65
    new-instance v2, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-direct {v2, v0}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 66
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectImageModules:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getCreativeFieldDTOs()Ljava/util/List;
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
    .line 190
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->creativeFieldDTOs:Ljava/util/List;

    return-object v0
.end method

.method public getProjectCopyrightSettings()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectImageModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectImageModules:Ljava/util/List;

    return-object v0
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectTags:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isCCAssetBrowserDisabled()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->ccAssetBrowserDisabled:Z

    return v0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectContainsAdultContent:Z

    return v0
.end method

.method public setCCAssetBrowserDisabled(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->ccAssetBrowserDisabled:Z

    .line 175
    return-void
.end method

.method public setCreativeFieldDTOs(Ljava/util/List;)V
    .locals 0
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
    .line 198
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->creativeFieldDTOs:Ljava/util/List;

    .line 199
    return-void
.end method

.method public setProjectContainsAdultContent(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectContainsAdultContent:Z

    .line 166
    return-void
.end method

.method public setProjectCopyrightSettings(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 146
    return-void
.end method

.method public setProjectDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectDescription:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setProjectTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectTags:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKPublishProjectOptions;->projectTitle:Ljava/lang/String;

    .line 89
    return-void
.end method
