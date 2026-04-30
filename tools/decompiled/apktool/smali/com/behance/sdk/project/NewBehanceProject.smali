.class public Lcom/behance/sdk/project/NewBehanceProject;
.super Ljava/lang/Object;
.source "NewBehanceProject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CONTAINS_ADULT_CONTENT:I = 0x1

.field private static final NO_ADULT_CONTENT:I = 0x0

.field private static final NUMBER_OF_PROJECT_MODULES:I = 0x4

.field private static final serialVersionUID:J = -0x102643615f51a544L


# instance fields
.field private containAdultContent:I

.field private copyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field private cover:Lcom/behance/sdk/project/modules/CoverImage;

.field private description:Ljava/lang/String;

.field private embedModuleCount:I

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

.field private projectID:Ljava/lang/String;

.field private projectModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;"
        }
    .end annotation
.end field

.field private projectURL:Ljava/lang/String;

.field private shareOnFaceBook:Z

.field private shareOnTwitter:Z

.field private tags:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v1, p0, Lcom/behance/sdk/project/NewBehanceProject;->embedModuleCount:I

    .line 61
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDefaultValue()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->copyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 63
    iput v1, p0, Lcom/behance/sdk/project/NewBehanceProject;->containAdultContent:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public addImagesToProject(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/behance/sdk/project/modules/ImageModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    .line 265
    iget-object v2, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Lcom/behance/sdk/project/NewBehanceProject;->addProjectModule(Lcom/behance/sdk/project/modules/ProjectModule;)V

    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method

.method public addProjectModule(Lcom/behance/sdk/project/modules/ProjectModule;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {p1}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->EMBED:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    if-ne v0, v1, :cond_0

    .line 184
    check-cast p1, Lcom/behance/sdk/project/modules/EmbedModule;

    iget v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->embedModuleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->embedModuleCount:I

    invoke-virtual {p1, v0}, Lcom/behance/sdk/project/modules/EmbedModule;->setOrder(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public addProjectModules(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    invoke-virtual {v0}, Lcom/behance/sdk/project/modules/CoverImage;->remove()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 230
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->clear()V

    goto :goto_0

    .line 233
    :cond_1
    return-void
.end method

.method public containsAdultContent()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->containAdultContent:I

    return v0
.end method

.method public getCopyRight()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->copyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public getCoverImage()Lcom/behance/sdk/project/modules/CoverImage;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->description:Ljava/lang/String;

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
    .line 111
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getImageModules()Ljava/util/List;
    .locals 5
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
    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 205
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v3

    .line 206
    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    if-ne v3, v4, :cond_0

    .line 207
    :cond_1
    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_2
    return-object v1
.end method

.method public getNumberOfProjectModules()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectID:Ljava/lang/String;

    return-object v0
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
    .line 156
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    return-object v0
.end method

.method public getShareOnFaceBook()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->shareOnFaceBook:Z

    return v0
.end method

.method public getShareOnTwitter()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->shareOnTwitter:Z

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectURL:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/behance/sdk/project/NewBehanceProject;->getNumberOfProjectModules()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 236
    iget v1, p0, Lcom/behance/sdk/project/NewBehanceProject;->containAdultContent:I

    if-ne v0, v1, :cond_0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markProjectForAdultContent(Z)V
    .locals 1

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->containAdultContent:I

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->containAdultContent:I

    goto :goto_0
.end method

.method public removeAllImageModules()V
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/behance/sdk/project/NewBehanceProject;->getImageModules()Ljava/util/List;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 273
    return-void
.end method

.method public removeProjectModules(Lcom/behance/sdk/project/modules/ProjectModule;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    return-void
.end method

.method public reorderSelectedModules(II)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 223
    iget-object v1, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectModules:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 224
    return-void
.end method

.method public setCopyRight(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->copyRight:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 259
    return-void
.end method

.method public setCoverImage(Lcom/behance/sdk/project/modules/CoverImage;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->cover:Lcom/behance/sdk/project/modules/CoverImage;

    .line 150
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->description:Ljava/lang/String;

    .line 105
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
    .line 119
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->fields:Ljava/util/List;

    .line 120
    return-void
.end method

.method public setProjectID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectID:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setShareOnFaceBook(Z)V
    .locals 0

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->shareOnFaceBook:Z

    .line 293
    return-void
.end method

.method public setShareOnTwitter(Z)V
    .locals 0

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->shareOnTwitter:Z

    .line 301
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->tags:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->title:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/behance/sdk/project/NewBehanceProject;->projectURL:Ljava/lang/String;

    .line 281
    return-void
.end method
