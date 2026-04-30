.class public Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;
.super Ljava/lang/Object;
.source "JoinTeamDetails.java"


# instance fields
.field protected final linkedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AppLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final linkedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final linkedSharedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/FolderLogInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AppLogInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/FolderLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'linkedApps\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    .line 47
    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'linkedApps\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    .line 52
    if-nez p2, :cond_3

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'linkedDevices\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    .line 56
    if-nez v0, :cond_4

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'linkedDevices\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    .line 61
    if-nez p3, :cond_6

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'linkedSharedFolders\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    .line 65
    if-nez v0, :cond_7

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'linkedSharedFolders\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_8
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p1, p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    check-cast p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    .line 120
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    .line 121
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    .line 122
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public getLinkedApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/AppLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    return-object v0
.end method

.method public getLinkedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    return-object v0
.end method

.method public getLinkedSharedFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/FolderLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
