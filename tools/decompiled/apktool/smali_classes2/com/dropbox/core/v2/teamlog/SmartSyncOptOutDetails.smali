.class public Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;
.super Ljava/lang/Object;
.source "SmartSyncOptOutDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'previousValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    .line 86
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    .line 87
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutPolicy;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 72
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
