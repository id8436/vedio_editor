.class public Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;
.super Ljava/lang/Object;
.source "BehanceSDKProjectPublishWFManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INSTANCE:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;


# instance fields
.field private coverImageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

.field private hideFacebookSharing:Z

.field private hideTwitterSharing:Z

.field private notificationHandlerActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private projectModuleChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

.field private selectedImagesForCover:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;"
        }
    .end annotation
.end field

.field private userCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    invoke-direct {v0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->INSTANCE:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->coverImageChangeListeners:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->INSTANCE:Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;

    .line 163
    iget-object v2, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v2}, Lcom/behance/sdk/project/NewBehanceProject;->getProjectModules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;->projectModulesChanged(Ljava/util/List;)V

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public addCoverImageChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->coverImageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->coverImageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public addImageSelectedForProject(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->initializeProject()V

    .line 209
    :cond_0
    new-instance v0, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-direct {v0, p1}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 210
    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/project/NewBehanceProject;->addProjectModule(Lcom/behance/sdk/project/modules/ProjectModule;)V

    .line 211
    invoke-direct {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notifyListeners()V

    .line 212
    return-void
.end method

.method public addImagesSelectedForCover(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_1
    return-void
.end method

.method public addImagesSelectedForProject(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->initializeProject()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->addImagesToProject(Ljava/util/List;)V

    .line 146
    invoke-direct {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notifyListeners()V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->removeAllImageModules()V

    .line 150
    invoke-direct {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notifyListeners()V

    goto :goto_0
.end method

.method public addModuleToCurrentProject(Lcom/behance/sdk/project/modules/ProjectModule;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->initializeProject()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->addProjectModule(Lcom/behance/sdk/project/modules/ProjectModule;)V

    .line 240
    invoke-direct {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notifyListeners()V

    .line 241
    return-void
.end method

.method public addProjectModuleChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    return-void
.end method

.method public cancelWorkflow()V
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->getImagesSelectedForProject()Ljava/util/List;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 319
    sget-object v2, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/ImageModule;->deleteFromFileSystem()V

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->finishWorkflow()V

    .line 326
    return-void
.end method

.method public clearImagesSelectedForCover()V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getImageModules()Ljava/util/List;

    move-result-object v1

    .line 170
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 171
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v3

    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    if-ne v3, v4, :cond_0

    .line 172
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->deleteFromFileSystem()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    .line 180
    :cond_2
    return-void
.end method

.method public finishWorkflow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->clearImagesSelectedForCover()V

    .line 330
    invoke-virtual {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->removeAllModuleChangeListeners()V

    .line 331
    invoke-virtual {p0, v1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 332
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->clear()V

    .line 334
    iput-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    .line 336
    :cond_0
    return-void
.end method

.method public getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getCopyRight()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->BY_NC:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    goto :goto_0
.end method

.method public getImagesSelectedForCover()Ljava/util/List;
    .locals 3
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
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v1}, Lcom/behance/sdk/project/NewBehanceProject;->getImageModules()Ljava/util/List;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_1
    return-object v0
.end method

.method public getImagesSelectedForProject()Ljava/util/List;
    .locals 2
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
    .line 190
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getImageModules()Ljava/util/List;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method

.method public getImagesSelectedOnlyForCover()Ljava/util/List;
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
    .line 136
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->selectedImagesForCover:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationHandlerActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notificationHandlerActivityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
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
    .line 269
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getFields()Ljava/util/List;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getProjectModules()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getTags()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    return-object v0
.end method

.method public getSelectedCoverImage()Lcom/behance/sdk/project/modules/CoverImage;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getCoverImage()Lcom/behance/sdk/project/modules/CoverImage;

    move-result-object v0

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareOnFaceBook()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getShareOnFaceBook()Z

    move-result v0

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShareOnTwitter()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->getShareOnTwitter()Z

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->userCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    return-object v0
.end method

.method public initializeProject()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/behance/sdk/project/NewBehanceProject;

    invoke-direct {v0}, Lcom/behance/sdk/project/NewBehanceProject;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    .line 159
    :cond_0
    return-void
.end method

.method public isEmptyProject()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideFacebookSharing()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->hideFacebookSharing:Z

    return v0
.end method

.method public isHideTwitterSharing()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->hideTwitterSharing:Z

    return v0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0}, Lcom/behance/sdk/project/NewBehanceProject;->isProjectContainsAdultContent()Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllModuleChangeListeners()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    :cond_0
    return-void
.end method

.method public removeCoverImageChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->coverImageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public removeProjectModule(Lcom/behance/sdk/project/modules/ProjectModule;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->removeProjectModules(Lcom/behance/sdk/project/modules/ProjectModule;)V

    .line 341
    :cond_0
    invoke-interface {p1}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    if-ne v0, v1, :cond_1

    .line 342
    check-cast p1, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->recycleImageBitmap()V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notifyListeners()V

    .line 346
    return-void
.end method

.method public removeProjectModuleChangeListener(Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public reorderSelectedModules(II)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1, p2}, Lcom/behance/sdk/project/NewBehanceProject;->reorderSelectedModules(II)V

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notifyListeners()V

    .line 218
    return-void
.end method

.method public rotateImage(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->rotateImage()V

    .line 403
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->projectModuleChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;

    .line 404
    invoke-interface {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$ProjectModuleChangeListener;->rotateImage(Lcom/behance/sdk/project/modules/ImageModule;)V

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method public setContainsAdultContent(Z)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->markProjectForAdultContent(Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public setCopyrightOption(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setCopyRight(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setHideFacebookSharing(Z)V
    .locals 0

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->hideFacebookSharing:Z

    .line 399
    return-void
.end method

.method public setHideTwitterSharing(Z)V
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->hideTwitterSharing:Z

    .line 391
    return-void
.end method

.method public setNotificationHandlerActivityClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    iput-object p1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->notificationHandlerActivityClass:Ljava/lang/Class;

    .line 383
    return-void
.end method

.method public setProjectDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setDescription(Ljava/lang/String;)V

    .line 277
    :cond_0
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
    .line 264
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setFields(Ljava/util/List;)V

    .line 266
    :cond_0
    return-void
.end method

.method public setProjectTags(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setTags(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setTitle(Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method public setPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    .line 70
    return-void
.end method

.method public setSelectedCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V

    .line 229
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->coverImageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->coverImageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;

    .line 231
    invoke-interface {v0, p1}, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager$CoverImageChangeListener;->coverImageChanges(Lcom/behance/sdk/project/modules/CoverImage;)V

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public setShareOnFaceBook(Z)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setShareOnFaceBook(Z)V

    .line 358
    :cond_0
    return-void
.end method

.method public setShareOnTwitter(Z)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->currentBehanceProject:Lcom/behance/sdk/project/NewBehanceProject;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/project/NewBehanceProject;->setShareOnTwitter(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/behance/sdk/managers/BehanceSDKProjectPublishWFManager;->userCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    .line 291
    return-void
.end method
