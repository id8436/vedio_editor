.class public Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;
.super Ljava/lang/Object;
.source "MicrosoftOfficeAddinChangePolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    .line 45
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    .line 103
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    .line 104
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinPolicy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 89
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
