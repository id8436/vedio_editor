.class public Lcom/adobe/premiereclip/project/NewProjectData;
.super Ljava/lang/Object;
.source "NewProjectData.java"


# static fields
.field private static instance:Lcom/adobe/premiereclip/project/NewProjectData;

.field private static read:Z


# instance fields
.field private mediaRequestResult:Landroid/content/Intent;

.field private mediaRequestType:I

.field private projectMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/project/NewProjectData;->read:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x2716

    iput v0, p0, Lcom/adobe/premiereclip/project/NewProjectData;->mediaRequestType:I

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/NewProjectData;->mediaRequestResult:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/adobe/premiereclip/project/NewProjectData;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/project/NewProjectData;->read:Z

    .line 42
    sget-object v0, Lcom/adobe/premiereclip/project/NewProjectData;->instance:Lcom/adobe/premiereclip/project/NewProjectData;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/adobe/premiereclip/project/NewProjectData;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/NewProjectData;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/project/NewProjectData;->instance:Lcom/adobe/premiereclip/project/NewProjectData;

    .line 45
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/project/NewProjectData;->instance:Lcom/adobe/premiereclip/project/NewProjectData;

    return-object v0
.end method

.method public static isRead()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/adobe/premiereclip/project/NewProjectData;->read:Z

    return v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/premiereclip/project/NewProjectData;->instance:Lcom/adobe/premiereclip/project/NewProjectData;

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/project/NewProjectData;->read:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getMediaRequestResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/project/NewProjectData;->mediaRequestResult:Landroid/content/Intent;

    return-object v0
.end method

.method public getMediaRequestType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/adobe/premiereclip/project/NewProjectData;->mediaRequestType:I

    return v0
.end method

.method public getProjectMode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/adobe/premiereclip/project/NewProjectData;->projectMode:I

    return v0
.end method

.method public setMediaRequestResult(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/adobe/premiereclip/project/NewProjectData;->mediaRequestResult:Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public setMediaRequestType(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/adobe/premiereclip/project/NewProjectData;->mediaRequestType:I

    .line 58
    return-void
.end method

.method public setProjectMode(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/adobe/premiereclip/project/NewProjectData;->projectMode:I

    .line 66
    return-void
.end method
