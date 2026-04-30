.class public Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;
.super Ljava/lang/Object;
.source "BehanceSDKProjectPublishDTO.java"


# instance fields
.field private coverImageId:I

.field private project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

.field private publish:Z

.field private shareFacebook:Z

.field private shareTwitter:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->publish:Z

    iput-boolean v1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->shareFacebook:Z

    iput-boolean v1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->shareTwitter:Z

    return-void
.end method


# virtual methods
.method public getCoverImageId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->coverImageId:I

    return v0
.end method

.method public getProject()Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    return-object v0
.end method

.method public isPublish()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->publish:Z

    return v0
.end method

.method public isShareFacebook()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->shareFacebook:Z

    return v0
.end method

.method public isShareTwitter()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->shareTwitter:Z

    return v0
.end method

.method public setCoverImageId(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->coverImageId:I

    .line 19
    return-void
.end method

.method public setProject(Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->project:Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    .line 35
    return-void
.end method

.method public setPublish(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->publish:Z

    .line 27
    return-void
.end method

.method public setShareFacebook(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->shareFacebook:Z

    .line 43
    return-void
.end method

.method public setShareTwitter(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->shareTwitter:Z

    .line 51
    return-void
.end method
