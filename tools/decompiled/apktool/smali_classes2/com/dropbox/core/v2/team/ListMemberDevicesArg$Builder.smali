.class public Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
.super Ljava/lang/Object;
.source "ListMemberDevicesArg.java"


# instance fields
.field protected includeDesktopClients:Z

.field protected includeMobileClients:Z

.field protected includeWebSessions:Z

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamMemberId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->teamMemberId:Ljava/lang/String;

    .line 133
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    .line 134
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    .line 135
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    .line 136
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ListMemberDevicesArg;
    .locals 5

    .prologue
    .line 210
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->teamMemberId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 1

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    .line 178
    :goto_0
    return-object p0

    .line 176
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeDesktopClients:Z

    goto :goto_0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 1

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    .line 200
    :goto_0
    return-object p0

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeMobileClients:Z

    goto :goto_0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    .line 156
    :goto_0
    return-object p0

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->includeWebSessions:Z

    goto :goto_0
.end method
