.class public Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;
.super Ljava/lang/Object;
.source "DataPlacementRestrictionSatisfyPolicyDetails.java"


# instance fields
.field protected final placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PlacementRestriction;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'placementRestriction\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    .line 74
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/PlacementRestriction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getPlacementRestriction()Lcom/dropbox/core/v2/teamlog/PlacementRestriction;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;->placementRestriction:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 60
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
