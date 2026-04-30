.class public Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private adobeUserId:Ljava/lang/String;

.field private behanceUserId:Ljava/lang/String;

.field private containsAdultContent:Z

.field private copyrightOption:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field private creativeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field

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

.field private projectDescription:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private projectModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;"
        }
    .end annotation
.end field

.field private projectTags:Ljava/lang/String;

.field private projectTitle:Ljava/lang/String;

.field private projectTools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKTagDTO;",
            ">;"
        }
    .end annotation
.end field

.field private publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->notificationHandlerActivityClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->copyrightOption:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object p1
.end method

.method static synthetic access$102(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)Lcom/behance/sdk/IBehanceSDKProjectPublishListener;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->creativeFields:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->creativeFields:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTools:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTools:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->behanceUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->adobeUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTags:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->containsAdultContent:Z

    return p1
.end method


# virtual methods
.method public addProjectModule(Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectModules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectModules:Ljava/util/List;

    .line 42
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->setNewModule(Z)V

    .line 43
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectModules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public getAdobeUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->adobeUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getBehanceUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->behanceUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightOption()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->copyrightOption:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public getCreativeFields()Ljava/util/List;
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
    .line 139
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->creativeFields:Ljava/util/List;

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
    .line 51
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->notificationHandlerActivityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectId:Ljava/lang/String;

    return-object v0
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
    .line 131
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectModules:Ljava/util/List;

    return-object v0
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTags:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTools()Ljava/util/List;
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
    .line 147
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->projectTools:Ljava/util/List;

    return-object v0
.end method

.method public getPublishListener()Lcom/behance/sdk/IBehanceSDKProjectPublishListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->publishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    return-object v0
.end method

.method public isContainsAdultContent()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/behance/sdk/util/BehanceSDKProjectEditorParams;->containsAdultContent:Z

    return v0
.end method
