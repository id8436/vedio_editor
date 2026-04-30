.class public Lcom/adobe/premiereclip/project/ProjectManager;
.super Ljava/lang/Object;
.source "ProjectManager.java"


# static fields
.field private static instance:Lcom/adobe/premiereclip/project/ProjectManager;


# instance fields
.field private projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/project/Project;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    return-void
.end method

.method private createUniqueKey(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "Time"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/adobe/premiereclip/project/ProjectManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/adobe/premiereclip/project/ProjectManager;->instance:Lcom/adobe/premiereclip/project/ProjectManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/adobe/premiereclip/project/ProjectManager;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/ProjectManager;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/project/ProjectManager;->instance:Lcom/adobe/premiereclip/project/ProjectManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/project/ProjectManager;->instance:Lcom/adobe/premiereclip/project/ProjectManager;

    return-object v0
.end method


# virtual methods
.method public addProject(Lcom/adobe/premiereclip/project/Project;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public createProject(Ljava/lang/String;I)Lcom/adobe/premiereclip/project/Project;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 64
    invoke-virtual {p0, p1, v0, p2}, Lcom/adobe/premiereclip/project/ProjectManager;->createProject(Ljava/lang/String;Ljava/util/Date;I)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    return-object v0
.end method

.method public createProject(Ljava/lang/String;Ljava/util/Date;I)Lcom/adobe/premiereclip/project/Project;
    .locals 3

    .prologue
    .line 54
    const-string/jumbo v0, ""

    .line 56
    invoke-static {p1, p2, v0, p3}, Lcom/adobe/premiereclip/dcx/DCXWriter;->createBlankProject(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/adobe/premiereclip/project/Project;

    new-instance v2, Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-direct {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;-><init>()V

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/adobe/premiereclip/project/Project;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/project/ProjectManager;->addProject(Lcom/adobe/premiereclip/project/Project;)V

    .line 59
    return-object v1
.end method

.method public createProject(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/adobe/premiereclip/project/Project;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/adobe/premiereclip/project/Project;

    new-instance v1, Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-direct {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;-><init>()V

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/adobe/premiereclip/project/Project;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 69
    invoke-virtual {v0, p6}, Lcom/adobe/premiereclip/project/Project;->setEditMode(I)V

    .line 70
    if-eqz p4, :cond_0

    .line 71
    invoke-virtual {v0, p4}, Lcom/adobe/premiereclip/project/Project;->setPosterPath(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p5}, Lcom/adobe/premiereclip/project/Project;->setPosterHashValue(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method public deleteProjectWithKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/project/ProjectManager;->getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public getProjectWithKey(Ljava/lang/String;)Lcom/adobe/premiereclip/project/Project;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/Project;

    return-object v0
.end method

.method public getProjectsList()Ljava/util/ArrayList;
    .locals 2
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
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    new-instance v1, Lcom/adobe/premiereclip/project/ProjectManager$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/project/ProjectManager$1;-><init>(Lcom/adobe/premiereclip/project/ProjectManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    return-object v0
.end method

.method public isProjectAdded(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSequence(Lcom/adobe/premiereclip/project/Project;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->setSequenceFromDCX(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 126
    iget-object v0, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXProjectFactory;->handlePreferencesWhenOpeningProjectWithId(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public updateProject(Lcom/adobe/premiereclip/project/Project;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/adobe/premiereclip/project/ProjectManager;->projectHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method
