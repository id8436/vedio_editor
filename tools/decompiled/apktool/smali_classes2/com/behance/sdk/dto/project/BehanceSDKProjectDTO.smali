.class public Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LAYOUT_HTML_FILE_NAME:Ljava/lang/String; = "layout.html"

.field public static final MATURE_CONTENT_ACCESS_ALLOWED:Ljava/lang/String; = "allowed"

.field public static final MATURE_CONTENT_ACCESS_RESTRICTED_AGE:Ljava/lang/String; = "restricted-age"

.field public static final MATURE_CONTENT_ACCESS_RESTRICTED_LOGGED_OUT:Ljava/lang/String; = "logged-out"

.field public static final MATURE_CONTENT_ACCESS_RESTRICTED_SAFE_BROWSING:Ljava/lang/String; = "restricted-safe"

.field public static final PUBLIC_PROJECT:Ljava/lang/String; = "public"

.field private static final serialVersionUID:J = 0x5923357f035a658L


# instance fields
.field private allowComments:Z

.field private appreciatedByUser:Z

.field private appreciatedByUserOn:J

.field private canvasWidth:I

.field private copyright:Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

.field private covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

.field private createdDate:J

.field private custom_css:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private html:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isVisible:Z

.field private layoutHTMLPath:Ljava/lang/String;

.field private matureAccess:Ljava/lang/String;

.field private matureContent:Z

.field private modifiedDate:J

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;",
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

.field private privacy:Ljava/lang/String;

.field private projectStyles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

.field private projectUrl:Ljava/lang/String;

.field private publicProject:Z

.field private publishedDate:J

.field private shortUrl:Ljava/lang/String;

.field private stats:Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

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

.field private tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isVisible:Z

    return-void
.end method


# virtual methods
.method public addFeature(Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->features:Ljava/util/List;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->features:Ljava/util/List;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public addField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->fields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->fields:Ljava/util/List;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public addModule(Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modules:Ljava/util/List;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public addOwner(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->owners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->owners:Ljava/util/List;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->owners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public getAppreciatedByUserOn()J
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->appreciatedByUserOn:J

    return-wide v0
.end method

.method public getCanvasWidth()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->canvasWidth:I

    return v0
.end method

.method public getCopyright()Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->copyright:Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->copyright:Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->copyright:Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    return-object v0
.end method

.method public getCovers()Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->createdDate:J

    return-wide v0
.end method

.method public getCustomCSS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->custom_css:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->features:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->features:Ljava/util/List;

    .line 294
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
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
    .line 119
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->fields:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->fields:Ljava/util/List;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutHTMLPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->layoutHTMLPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->layoutHTMLPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/behance/sdk/util/BehanceSDKFileUtils;->getNetworkAppProjectHTMLStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->layoutHTMLPath:Ljava/lang/String;

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->layoutHTMLPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMatureAccess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->matureAccess:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v0, "restricted-safe"

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->matureAccess:Ljava/lang/String;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->matureAccess:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modifiedDate:J

    return-wide v0
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modules:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modules:Ljava/util/List;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->name:Ljava/lang/String;

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
    .line 100
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->owners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->owners:Ljava/util/List;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectStyles()Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->projectStyles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    return-object v0
.end method

.method public getProjectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->projectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedDate()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->publishedDate:J

    return-wide v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->stats:Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->stats:Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->stats:Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

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
    .line 310
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tools:Ljava/util/List;

    return-object v0
.end method

.method public isAllowComments()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->allowComments:Z

    return v0
.end method

.method public isAppreciatedByUser()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->appreciatedByUser:Z

    return v0
.end method

.method public isMatureContent()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->matureContent:Z

    return v0
.end method

.method public isPublicProject()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getPrivacy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->publicProject:Z

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isVisible:Z

    return v0
.end method

.method public setAllowComments(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->allowComments:Z

    .line 383
    return-void
.end method

.method public setAppreciatedByUser(Z)V
    .locals 0

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->appreciatedByUser:Z

    .line 359
    return-void
.end method

.method public setAppreciatedByUserOn(J)V
    .locals 1

    .prologue
    .line 350
    iput-wide p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->appreciatedByUserOn:J

    .line 351
    return-void
.end method

.method public setCanvasWidth(I)V
    .locals 0

    .prologue
    .line 374
    iput p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->canvasWidth:I

    .line 375
    return-void
.end method

.method public setCopyright(Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->copyright:Lcom/behance/sdk/dto/project/BehanceSDKProjectCopyrightDTO;

    .line 336
    return-void
.end method

.method public setCovers(Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->covers:Lcom/behance/sdk/dto/project/BehanceSDKProjectCoversDTO;

    .line 217
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->createdDate:J

    .line 179
    return-void
.end method

.method public setCustomCSS(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->custom_css:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->description:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setFeatures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectFeaturedDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->features:Ljava/util/List;

    .line 300
    return-void
.end method

.method public setFields(Ljava/util/List;)V
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
    .line 127
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->fields:Ljava/util/List;

    .line 128
    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->html:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->id:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMatureAccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->matureAccess:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setMatureContent(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->matureContent:Z

    .line 160
    return-void
.end method

.method public setModifiedDate(J)V
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modifiedDate:J

    .line 187
    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->modules:Ljava/util/List;

    .line 229
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->name:Ljava/lang/String;

    .line 97
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
    .line 108
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->owners:Ljava/util/List;

    .line 109
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->privacy:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setPublicProject(Z)V

    .line 152
    return-void
.end method

.method public setProjectStyles(Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->projectStyles:Lcom/behance/sdk/dto/project/BehanceSDKProjectStylesDTO;

    .line 367
    return-void
.end method

.method public setPublicProject(Z)V
    .locals 0

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->publicProject:Z

    .line 288
    return-void
.end method

.method public setPublishedDate(J)V
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->publishedDate:J

    .line 195
    return-void
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->shortUrl:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setStats(Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->stats:Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    .line 206
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
    .line 317
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tags:Ljava/util/List;

    .line 318
    return-void
.end method

.method public setTools(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectToolDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->tools:Ljava/util/List;

    .line 391
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->projectUrl:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->isVisible:Z

    .line 268
    return-void
.end method
