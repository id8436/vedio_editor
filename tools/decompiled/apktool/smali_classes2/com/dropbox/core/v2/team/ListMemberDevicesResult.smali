.class public Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
.super Ljava/lang/Object;
.source "ListMemberDevicesResult.java"


# instance fields
.field protected final activeWebSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final desktopClientSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mobileClientSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'activeWebSessions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    .line 49
    if-eqz p2, :cond_3

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DesktopClientSession;

    .line 51
    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'desktopClientSessions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    .line 57
    if-eqz p3, :cond_5

    .line 58
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MobileClientSession;

    .line 59
    if-nez v0, :cond_4

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'mobileClientSessions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    .line 65
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    if-ne p1, p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;

    .line 228
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    .line 229
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    .line 230
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 234
    goto :goto_0
.end method

.method public getActiveWebSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/ActiveWebSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    return-object v0
.end method

.method public getDesktopClientSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/DesktopClientSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    return-object v0
.end method

.method public getMobileClientSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MobileClientSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->activeWebSessions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->desktopClientSessions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;->mobileClientSessions:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 214
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
