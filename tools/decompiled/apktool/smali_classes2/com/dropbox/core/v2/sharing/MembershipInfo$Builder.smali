.class public Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
.super Ljava/lang/Object;
.source "MembershipInfo.java"


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected initials:Ljava/lang/String;

.field protected isInherited:Z

.field protected permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 147
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->permissions:Ljava/util/List;

    .line 148
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->initials:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->isInherited:Z

    .line 150
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 5

    .prologue
    .line 216
    new-instance v0, Lcom/dropbox/core/v2/sharing/MembershipInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->permissions:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->initials:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->isInherited:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/sharing/MembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->initials:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->isInherited:Z

    .line 206
    :goto_0
    return-object p0

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->isInherited:Z

    goto :goto_0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPermission;

    .line 167
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'permissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->permissions:Ljava/util/List;

    .line 173
    return-object p0
.end method
