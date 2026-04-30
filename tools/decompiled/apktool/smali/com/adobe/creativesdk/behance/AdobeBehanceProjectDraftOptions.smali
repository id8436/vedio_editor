.class public Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;
.super Ljava/lang/Object;
.source "AdobeBehanceProjectDraftOptions.java"


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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProjectCopyrightSettings()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    return-object v0
.end method

.method public getProjectCoverImage()Ljava/io/File;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->coverImage:Ljava/io/File;

    return-object v0
.end method

.method public getProjectCreativeFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->creativeFields:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectTags:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectContainsAdultContent:Z

    return v0
.end method

.method public setProjectContainsAdultContent(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectContainsAdultContent:Z

    .line 98
    return-void
.end method

.method public setProjectCopyrightSettings(Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectCopyrightSettings:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 82
    return-void
.end method

.method public setProjectCoverImage(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->coverImage:Ljava/io/File;

    .line 130
    return-void
.end method

.method public setProjectCreativeFields(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->creativeFields:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setProjectDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectDescription:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setProjectTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectTags:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/creativesdk/behance/AdobeBehanceProjectDraftOptions;->projectTitle:Ljava/lang/String;

    .line 33
    return-void
.end method
