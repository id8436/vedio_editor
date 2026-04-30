.class public Lcom/behance/sdk/BehanceSDKProjectEditorOptions;
.super Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;
.source "BehanceSDKProjectEditorOptions.java"


# instance fields
.field private defaultTool:Lcom/behance/sdk/dto/BehanceSDKTagDTO;

.field private projectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/behance/sdk/BehanceSDKAbstractPublishOptions;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectEditorOptions;->projectId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultTool()Lcom/behance/sdk/dto/BehanceSDKTagDTO;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectEditorOptions;->defaultTool:Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectEditorOptions;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultTool(Lcom/behance/sdk/dto/BehanceSDKTagDTO;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectEditorOptions;->defaultTool:Lcom/behance/sdk/dto/BehanceSDKTagDTO;

    .line 43
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectEditorOptions;->projectId:Ljava/lang/String;

    .line 35
    return-void
.end method
