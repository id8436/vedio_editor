.class public Lcom/dropbox/core/v2/team/MemberDevices$Builder;
.super Ljava/lang/Object;
.source "MemberDevices.java"


# instance fields
.field protected desktopClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;"
        }
    .end annotation
.end field

.field protected mobileClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final teamMemberId:Ljava/lang/String;

.field protected webSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamMemberId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->teamMemberId:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->webSessions:Ljava/util/List;

    .line 158
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->desktopClients:Ljava/util/List;

    .line 159
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->mobileClients:Ljava/util/List;

    .line 160
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MemberDevices;
    .locals 5

    .prologue
    .line 238
    new-instance v0, Lcom/dropbox/core/v2/team/MemberDevices;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->webSessions:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->desktopClients:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->mobileClients:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/team/MemberDevices;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public withDesktopClients(Ljava/util/List;)Lcom/dropbox/core/v2/team/MemberDevices$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MemberDevices$Builder;"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_1

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DesktopClientSession;

    .line 199
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'desktopClients\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->desktopClients:Ljava/util/List;

    .line 205
    return-object p0
.end method

.method public withMobileClients(Ljava/util/List;)Lcom/dropbox/core/v2/team/MemberDevices$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MemberDevices$Builder;"
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MobileClientSession;

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'mobileClients\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->mobileClients:Ljava/util/List;

    .line 228
    return-object p0
.end method

.method public withWebSessions(Ljava/util/List;)Lcom/dropbox/core/v2/team/MemberDevices$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MemberDevices$Builder;"
        }
    .end annotation

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    .line 176
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'webSessions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberDevices$Builder;->webSessions:Ljava/util/List;

    .line 182
    return-object p0
.end method
