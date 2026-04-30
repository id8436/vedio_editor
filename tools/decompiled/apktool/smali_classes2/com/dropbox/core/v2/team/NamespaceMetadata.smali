.class public Lcom/dropbox/core/v2/team/NamespaceMetadata;
.super Ljava/lang/Object;
.source "NamespaceMetadata.java"


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final namespaceId:Ljava/lang/String;

.field protected final namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/NamespaceType;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/team/NamespaceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/NamespaceType;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/NamespaceType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'namespaceId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'namespaceId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    .line 56
    if-nez p3, :cond_3

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'namespaceType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    .line 60
    iput-object p4, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    if-ne p1, p0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 135
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 139
    check-cast p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;

    .line 140
    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    .line 142
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/NamespaceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceType()Lcom/dropbox/core/v2/team/NamespaceType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->namespaceType:Lcom/dropbox/core/v2/team/NamespaceType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/NamespaceMetadata;->teamMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 126
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/NamespaceMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
