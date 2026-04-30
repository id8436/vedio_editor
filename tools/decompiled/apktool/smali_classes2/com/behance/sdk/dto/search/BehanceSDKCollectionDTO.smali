.class public Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;
.super Ljava/lang/Object;
.source "BehanceSDKCollectionDTO.java"


# static fields
.field public static final ALL_TAGS_ID:Ljava/lang/String; = "ALL_TAGS_ID"

.field public static final APPRECIATED_PROJECTS_COLLECTION_ID:I = -0xc8


# instance fields
.field private createdTime:J

.field private currentUserFollowing:Z

.field private followersCount:I

.field private id:I

.field private itemCount:I

.field private latestProjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation
.end field

.field private modifiedTime:J

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

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLatestProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->latestProjects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->latestProjects:Ljava/util/List;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->latestProjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public addOwner(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->owners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->owners:Ljava/util/List;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->owners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->createdTime:J

    return-wide v0
.end method

.method public getFollowersCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->followersCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->id:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->itemCount:I

    return v0
.end method

.method public getLatestProjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->latestProjects:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->latestProjects:Ljava/util/List;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->modifiedTime:J

    return-wide v0
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
    .line 91
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->owners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->owners:Ljava/util/List;

    .line 94
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
    .line 110
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentUserFollowing()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->currentUserFollowing:Z

    return v0
.end method

.method public setCreatedTime(J)V
    .locals 1

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->createdTime:J

    .line 123
    return-void
.end method

.method public setCurrentUserFollowing(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->currentUserFollowing:Z

    .line 158
    return-void
.end method

.method public setFollowersCount(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->followersCount:I

    .line 88
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->id:I

    .line 56
    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->itemCount:I

    .line 80
    return-void
.end method

.method public setLatestProjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->latestProjects:Ljava/util/List;

    .line 143
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->modifiedTime:J

    .line 131
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
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->owners:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->privacy:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->title:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/behance/sdk/dto/search/BehanceSDKCollectionDTO;->url:Ljava/lang/String;

    .line 72
    return-void
.end method
