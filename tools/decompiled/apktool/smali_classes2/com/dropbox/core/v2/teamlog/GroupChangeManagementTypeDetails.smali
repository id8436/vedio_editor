.class public Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;
.super Ljava/lang/Object;
.source "GroupChangeManagementTypeDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;-><init>(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 98
    check-cast p1, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    .line 99
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 100
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->newValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;->previousValue:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 85
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
