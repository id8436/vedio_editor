.class public Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectServiceParamsDTO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d685e8da7c62635L


# instance fields
.field private appClientId:Ljava/lang/String;

.field private notificationHandlerActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private projectContainsAdultContent:Z

.field private projectCopyright:Ljava/lang/String;

.field private projectCoverImageByteArray:[B

.field private projectCoverImageFileName:Ljava/lang/String;

.field private projectCreativeFields:Ljava/lang/String;

.field private projectDescription:Ljava/lang/String;

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

.field private projectTags:Ljava/lang/String;

.field private projectTitle:Ljava/lang/String;

.field private shareOnFacebook:Z

.field private shareOnTwitter:Z

.field private twitterConsumerKey:Ljava/lang/String;

.field private twitterConsumerSecret:Ljava/lang/String;

.field private twitterUserAccessToken:Ljava/lang/String;

.field private twitterUserAccessTokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->appClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationHandlerActivity()Ljava/lang/Class;
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
    .line 66
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->notificationHandlerActivity:Ljava/lang/Class;

    return-object v0
.end method

.method public getProjectCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectCoverImageByteArray()[B
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCoverImageByteArray:[B

    return-object v0
.end method

.method public getProjectCoverImageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCoverImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectCreativeFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCreativeFields:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectDescription:Ljava/lang/String;

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
    .line 74
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectModules:Ljava/util/List;

    return-object v0
.end method

.method public getProjectTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectTags:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterUserAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterUserAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterUserAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterUserAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public isProjectContainsAdultContent()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectContainsAdultContent:Z

    return v0
.end method

.method public isShareOnFacebook()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->shareOnFacebook:Z

    return v0
.end method

.method public isShareOnTwitter()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->shareOnTwitter:Z

    return v0
.end method

.method public setAppClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->appClientId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setNotificationHandlerActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->notificationHandlerActivity:Ljava/lang/Class;

    .line 71
    return-void
.end method

.method public setProjectContainsAdultContent(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectContainsAdultContent:Z

    .line 127
    return-void
.end method

.method public setProjectCopyright(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCopyright:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setProjectCoverImageByteArray([B)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCoverImageByteArray:[B

    .line 135
    return-void
.end method

.method public setProjectCoverImageFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCoverImageFileName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setProjectCreativeFields(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectCreativeFields:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setProjectDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectDescription:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setProjectModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectModules:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setProjectTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectTags:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setProjectTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->projectTitle:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setShareOnFacebook(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->shareOnFacebook:Z

    .line 183
    return-void
.end method

.method public setShareOnTwitter(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->shareOnTwitter:Z

    .line 191
    return-void
.end method

.method public setTwitterConsumerKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterConsumerKey:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setTwitterConsumerSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterConsumerSecret:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setTwitterUserAccessToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterUserAccessToken:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTwitterUserAccessTokenSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->twitterUserAccessTokenSecret:Ljava/lang/String;

    .line 159
    return-void
.end method
