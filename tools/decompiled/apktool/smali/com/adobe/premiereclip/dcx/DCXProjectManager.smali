.class public Lcom/adobe/premiereclip/dcx/DCXProjectManager;
.super Ljava/lang/Object;
.source "DCXProjectManager.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;


# static fields
.field private static instance:Lcom/adobe/premiereclip/dcx/DCXProjectManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addBasicDCXProject(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/project/ProjectManager;->isProjectAdded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    const/4 v6, 0x2

    .line 50
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getProjectMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v6, v0

    .line 53
    :cond_0
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getRenditionPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getRenditionPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/Utilities;->getMD5HashFromFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->getBase64HashFromHexHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getCreationTS()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getRenditionPath()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/premiereclip/project/ProjectManager;->createProject(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/ProjectManager;->addProject(Lcom/adobe/premiereclip/project/Project;)V

    .line 65
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/dcx/DCXProjectManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->instance:Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->instance:Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    .line 42
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->instance:Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setDCXProjectManagerListener(Lcom/adobe/premiereclip/dcx/DCXModelController$IDCXProjectManagerListener;)V

    .line 44
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->instance:Lcom/adobe/premiereclip/dcx/DCXProjectManager;

    return-object v0
.end method

.method private updateBasicDCXProject(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/Project;->setProjectName(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x2

    .line 71
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getProjectMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :cond_0
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/project/Project;->setEditMode(I)V

    .line 75
    return-void
.end method

.method private updateProjectListFromModelReloadDCX(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/dcx/BasicDCXModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    monitor-enter p1

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 83
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    .line 85
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/premiereclip/project/ProjectManager;->isProjectAdded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->addBasicDCXProject(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)V

    .line 91
    :goto_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 89
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->updateBasicDCXProject(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)V

    goto :goto_1

    .line 93
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    .line 96
    iget-object v3, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v3

    iget-object v0, v0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/ProjectManager;->deleteProjectWithKey(Ljava/lang/String;)V

    goto :goto_2

    .line 100
    :cond_3
    return-void
.end method


# virtual methods
.method public getProjectListFromDCX()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/Project;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->initializeModelFromDisk()V

    .line 104
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getDataset()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXProjectManager;->updateProjectListFromModelReloadDCX(Ljava/util/List;)V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    .line 110
    const-string/jumbo v3, "Found"

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "preferences"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    return-object v1
.end method

.method public updatePosterForProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/adobe/premiereclip/project/ProjectManager;->getInstance()Lcom/adobe/premiereclip/project/ProjectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/Project;->getPosterHashValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/util/BitmapCache;->markBitmapDirty(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/Project;->setPosterPath(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/adobe/premiereclip/project/Project;->setPosterHashValue(Ljava/lang/String;)V

    .line 126
    :cond_1
    return-void
.end method
