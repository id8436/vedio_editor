.class public Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;
.super Ljava/lang/Object;
.source "DomainVerificationAddDomainSuccessDetails.java"


# instance fields
.field protected final domainNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final verificationMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'domainNames\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
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

    .line 44
    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'domainNames\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    .line 106
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method public getDomainNames()Ljava/util/List;
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
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    return-object v0
.end method

.method public getVerificationMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->domainNames:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;->verificationMethod:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 92
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
