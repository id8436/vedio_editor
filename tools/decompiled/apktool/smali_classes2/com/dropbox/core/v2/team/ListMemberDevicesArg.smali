.class Lcom/dropbox/core/v2/team/ListMemberDevicesArg;
.super Ljava/lang/Object;
.source "ListMemberDevicesArg.java"


# instance fields
.field protected final includeDesktopClients:Z

.field protected final includeMobileClients:Z

.field protected final includeWebSessions:Z

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamMemberId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeWebSessions:Z

    .line 47
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeDesktopClients:Z

    .line 48
    iput-boolean p4, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeMobileClients:Z

    .line 49
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 235
    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    .line 236
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeWebSessions:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeWebSessions:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeDesktopClients:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeDesktopClients:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeMobileClients:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeMobileClients:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 243
    goto :goto_0
.end method

.method public getIncludeDesktopClients()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeDesktopClients:Z

    return v0
.end method

.method public getIncludeMobileClients()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeMobileClients:Z

    return v0
.end method

.method public getIncludeWebSessions()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeWebSessions:Z

    return v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->teamMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeWebSessions:Z

    .line 218
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeDesktopClients:Z

    .line 219
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->includeMobileClients:Z

    .line 220
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 216
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 222
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
