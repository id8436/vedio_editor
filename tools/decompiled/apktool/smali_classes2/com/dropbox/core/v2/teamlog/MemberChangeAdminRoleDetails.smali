.class public Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;
.super Ljava/lang/Object;
.source "MemberChangeAdminRoleDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;-><init>(Lcom/dropbox/core/v2/teamlog/AdminRole;Lcom/dropbox/core/v2/teamlog/AdminRole;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/AdminRole;Lcom/dropbox/core/v2/teamlog/AdminRole;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    check-cast p1, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    .line 153
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/AdminRole;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    .line 154
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/AdminRole;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/AdminRole;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/AdminRole;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 139
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
