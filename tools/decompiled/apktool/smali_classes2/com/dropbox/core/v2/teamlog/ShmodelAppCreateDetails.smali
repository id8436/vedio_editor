.class public Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;
.super Ljava/lang/Object;
.source "ShmodelAppCreateDetails.java"


# instance fields
.field protected final sharingPermission:Ljava/lang/String;

.field protected final tokenKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Builder;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    if-ne p1, p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;

    .line 147
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public getSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->sharingPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;->tokenKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 133
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
