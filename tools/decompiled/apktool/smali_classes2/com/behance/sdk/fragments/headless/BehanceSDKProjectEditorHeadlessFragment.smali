.class public Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKProjectEditorHeadlessFragment.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

.field private coverAdditionalImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation
.end field

.field private coverChosen:Z

.field private coverPath:Ljava/lang/String;

.field private cropAndSaveCallbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;

.field private files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private nextNewModuleId:I

.field private project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

.field private shareOnFacebook:Z

.field private shareOnTwitter:Z

.field private socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverChosen:Z

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnFacebook:Z

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnTwitter:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->nextNewModuleId:I

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setRetainInstance(Z)V

    .line 60
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    .line 61
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverChosen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->cropAndSaveCallbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->files:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->files:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public addCoverAdditionalImages(Lcom/behance/sdk/dto/BehanceSDKImageDTO;)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverAdditionalImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public addProjectModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    .line 76
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->onModuleCountChanged(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public addTool(Lcom/behance/sdk/dto/BehanceSDKTagDTO;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addTool(Lcom/behance/sdk/dto/BehanceSDKTagDTO;)V

    .line 200
    return-void
.end method

.method public addTool(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addTools(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getCoOwners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompaniesSchools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCompaniesSchools()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCopyright()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC_ND:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setCopyright(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCopyright()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    return-object v0
.end method

.method public getCoverAdditionalImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverAdditionalImages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverAdditionalImages:Ljava/util/List;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverAdditionalImages:Ljava/util/List;

    return-object v0
.end method

.method public getCoverImages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKImageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x194

    const/16 v4, 0x13c

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;

    .line 98
    instance-of v3, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-direct {v3, v0}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;-><init>(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverAdditionalImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isCoverChosen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getCoverPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5, v4}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    :goto_1
    return-object v1

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Lcom/behance/sdk/dto/BehanceSDKImageDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getDraftCover()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5, v4}, Lcom/behance/sdk/dto/BehanceSDKImageDTO;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKFileUtils;->getAppStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cover-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverPath:Ljava/lang/String;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCredits()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCredits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    const-string/jumbo v0, ""

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDraftCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;->getOriginalCoverImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFacebookAccount()Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->FACEBOOK:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    return-object v0
.end method

.method public getFiles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->files:Ljava/util/Map;

    return-object v0
.end method

.method public getNextNewModuleId()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->nextNewModuleId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->nextNewModuleId:I

    return v0
.end method

.method public getProjectModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFields()Ljava/util/List;
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
    .line 315
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSocialAccountManager()Lcom/behance/sdk/BehanceSDKSocialAccountManager;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKUtils;->toCommaSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTeams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTeams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, ""

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTools()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTwitterAccount()Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->socialAccountManager:Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v0

    return-object v0
.end method

.method public isAdultContent()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->isMatureContent()Z

    move-result v0

    return v0
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->isAllowComments()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverChosen()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverChosen:Z

    return v0
.end method

.method public isPublishEligible()Z
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getSelectedFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShareOnFacebook()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnFacebook:Z

    return v0
.end method

.method public isShareOnTwitter()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnTwitter:Z

    return v0
.end method

.method public loadFiles(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;)V
    .locals 3

    .prologue
    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 405
    new-instance v2, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$2;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$LoadFilesCallbacks;J)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method public moduleCountChanged()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getProjectModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->onModuleCountChanged(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public publish(Z)Z
    .locals 2

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isPublishEligible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    .line 329
    :cond_0
    new-instance v0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;-><init>()V

    .line 330
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->setProject(Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V

    .line 331
    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->setPublish(Z)V

    .line 332
    iget-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnFacebook:Z

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->setShareFacebook(Z)V

    .line 333
    iget-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnTwitter:Z

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->setShareTwitter(Z)V

    .line 334
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-interface {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->getServiceInstance()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishProject(Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;)V

    .line 336
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->coverChosen:Z

    .line 232
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$1;-><init>(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;Landroid/graphics/Bitmap;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method public setAdultContent(Z)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setMatureContent(Z)V

    .line 143
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setBackgroundColor(I)V

    .line 426
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    .line 125
    return-void
.end method

.method public setCoOwners(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setOwners(Ljava/util/List;)V

    .line 220
    return-void
.end method

.method public setCommentsDisabled(Z)V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setAllowComments(Z)V

    .line 151
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompaniesSchools(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setCompaniesSchools(Ljava/util/List;)V

    .line 212
    return-void
.end method

.method public setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setCopyright(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 135
    return-void
.end method

.method public setCredits(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setCredits(Ljava/util/List;)V

    .line 228
    return-void
.end method

.method public setCropAndSaveCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->cropAndSaveCallbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$CropAndSaveCallbacks;

    .line 266
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setDescription(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setProject(Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    .line 282
    return-void
.end method

.method public setProjectDetailsFromParams(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)V
    .locals 5

    .prologue
    .line 370
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setTitle(Ljava/lang/String;)V

    .line 372
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setDescription(Ljava/lang/String;)V

    .line 374
    :cond_1
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectTags()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectTags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setTags(Ljava/lang/String;)V

    .line 376
    :cond_2
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;

    .line 378
    const/4 v1, 0x0

    .line 379
    instance-of v3, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v3, :cond_5

    move-object v1, v0

    .line 380
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_4
    :goto_1
    if-eqz v1, :cond_3

    .line 385
    new-instance v3, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->getNextNewModuleId()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;-><init>(ILjava/lang/String;)V

    .line 386
    invoke-virtual {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->uploadFile(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    .line 387
    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->addProjectModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V

    goto :goto_0

    .line 381
    :cond_5
    instance-of v3, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    if-eqz v3, :cond_4

    move-object v1, v0

    .line 382
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleVideo;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 391
    :cond_6
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 392
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 393
    :cond_7
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getCreativeFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 394
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getCreativeFields()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->setSelectedFields(Ljava/util/List;)V

    .line 395
    :cond_8
    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectTools()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 396
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {p1}, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->getProjectTools()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->addTools(Ljava/util/List;)V

    .line 397
    :cond_9
    return-void
.end method

.method public setProjectModules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setModules(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->onModuleCountChanged(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public setSelectedFields(Ljava/util/List;)V
    .locals 2
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
    .line 321
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setFields(Ljava/util/List;)V

    .line 322
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isPublishEligible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->onPublishEligibilityChanged(Z)V

    .line 324
    :cond_0
    return-void
.end method

.method public setShareOnFacebook(Z)V
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnFacebook:Z

    .line 298
    return-void
.end method

.method public setShareOnTwitter(Z)V
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->shareOnTwitter:Z

    .line 290
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setTags(Ljava/util/List;)V

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isPublishEligible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->onPublishEligibilityChanged(Z)V

    .line 178
    :cond_1
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    const-string/jumbo v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setTags(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setTeams(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setTeams(Ljava/util/List;)V

    .line 274
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setName(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->isPublishEligible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->onPublishEligibilityChanged(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public setTools(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->setTools(Ljava/util/List;)V

    .line 196
    return-void
.end method

.method public transformEmbed(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->getServiceInstance()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->getServiceInstance()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->transformEmbed(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    .line 347
    :cond_0
    return-void
.end method

.method public uploadFile(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->getServiceInstance()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKProjectEditorHeadlessFragment$ActivityCallbacks;->getServiceInstance()Lcom/behance/sdk/services/BehanceSDKProjectEditorService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadFile(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    .line 342
    :cond_0
    return-void
.end method
