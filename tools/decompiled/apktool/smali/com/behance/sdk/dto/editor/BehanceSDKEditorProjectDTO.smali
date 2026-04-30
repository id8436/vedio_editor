.class public Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;
.super Ljava/lang/Object;
.source "BehanceSDKEditorProjectDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allowComments:Z

.field private backgroundColor:I

.field private companiesSchools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation
.end field

.field private copyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field private covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

.field private credits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private matureContent:Z

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private owners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private teams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/search/BehanceSDKTeamDTO;",
            ">;"
        }
    .end annotation
.end field

.field private tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->allowComments:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public addField(Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public addModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addOwner(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public addTool(Lcom/behance/sdk/dto/BehanceSDKTagDTO;)V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTools()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public addTools(Ljava/util/List;)V
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
    .line 131
    invoke-virtual {p0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTools()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->backgroundColor:I

    return v0
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
    .line 165
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->companiesSchools:Ljava/util/List;

    return-object v0
.end method

.method public getCopyright()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->copyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

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
    .line 173
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->credits:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
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
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->fields:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModules()Ljava/util/List;
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
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->modules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->modules:Ljava/util/List;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwners()Ljava/util/List;
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
    .line 89
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->owners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->owners:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->owners:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tags:Ljava/util/List;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tags:Ljava/util/List;

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
    .line 181
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->teams:Ljava/util/List;

    return-object v0
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
    .line 117
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tools:Ljava/util/List;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tools:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tools:Ljava/util/List;

    return-object v0
.end method

.method public isAllowComments()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->allowComments:Z

    return v0
.end method

.method public isMatureContent()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->matureContent:Z

    return v0
.end method

.method public setAllowComments(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->allowComments:Z

    .line 72
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 193
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->backgroundColor:I

    .line 194
    return-void
.end method

.method public setCompaniesSchools(Ljava/util/List;)V
    .locals 0
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
    .line 169
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->companiesSchools:Ljava/util/List;

    .line 170
    return-void
.end method

.method public setCopyright(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->copyright:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 162
    return-void
.end method

.method public setCovers(Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    .line 154
    return-void
.end method

.method public setCredits(Ljava/util/List;)V
    .locals 0
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
    .line 177
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->credits:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->description:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFields(Ljava/util/List;)V
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
    .line 81
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->fields:Ljava/util/List;

    .line 82
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->id:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMatureContent(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->matureContent:Z

    .line 64
    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
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
    .line 109
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->modules:Ljava/util/List;

    .line 110
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setOwners(Ljava/util/List;)V
    .locals 0
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
    .line 95
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->owners:Ljava/util/List;

    .line 96
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tags:Ljava/util/List;

    .line 142
    return-void
.end method

.method public setTeams(Ljava/util/List;)V
    .locals 0
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
    .line 185
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->teams:Ljava/util/List;

    .line 186
    return-void
.end method

.method public setTools(Ljava/util/List;)V
    .locals 0
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
    .line 123
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->tools:Ljava/util/List;

    .line 124
    return-void
.end method
