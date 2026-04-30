.class public Lcom/behance/sdk/BehanceSDKProjectDraftOptions;
.super Ljava/lang/Object;
.source "BehanceSDKProjectDraftOptions.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private coverImage:Ljava/io/File;

.field private creativeFields:Ljava/lang/String;

.field private projectContainsAdultContent:Z

.field private projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

.field private projectDescription:Ljava/lang/String;

.field private projectTags:Ljava/lang/String;

.field private projectTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoverImage()Ljava/io/File;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->coverImage:Ljava/io/File;

    return-object v0
.end method

.method public getCreativeFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->creativeFields:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectCopyrightSettings()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectTags:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectContainsAdultContent:Z

    return v0
.end method

.method public setCoverImage(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->coverImage:Ljava/io/File;

    .line 160
    return-void
.end method

.method public setCreativeFields(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->creativeFields:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setProjectContainsAdultContent(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectContainsAdultContent:Z

    .line 121
    return-void
.end method

.method public setProjectCopyrightSettings(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 101
    return-void
.end method

.method public setProjectDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectDescription:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setProjectTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectTags:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDKProjectDraftOptions;->projectTitle:Ljava/lang/String;

    .line 44
    return-void
.end method
