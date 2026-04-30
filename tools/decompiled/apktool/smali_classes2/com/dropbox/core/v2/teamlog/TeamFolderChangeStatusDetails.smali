.class public Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;
.super Ljava/lang/Object;
.source "TeamFolderChangeStatusDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    .line 97
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    .line 98
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TeamFolderStatus;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 83
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
