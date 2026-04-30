.class public Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;
.super Ljava/lang/Object;
.source "FileCommentsChangePolicyDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    .line 100
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    .line 101
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 105
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentsPolicy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 86
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
