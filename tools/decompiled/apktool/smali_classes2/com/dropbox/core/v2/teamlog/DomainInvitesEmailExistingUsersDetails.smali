.class public Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;
.super Ljava/lang/Object;
.source "DomainInvitesEmailExistingUsersDetails.java"


# instance fields
.field protected final domainName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final numRecipients:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'domainName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'domainName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    .line 48
    iput-wide p2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    .line 89
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public getDomainName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    return-object v0
.end method

.method public getNumRecipients()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 75
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
