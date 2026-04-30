.class public Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;
.super Ljava/lang/Object;
.source "TfaChangeStatusDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

.field protected final usedRescueCode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 50
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    if-ne p1, p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 184
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    .line 190
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 191
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TfaConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 196
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/TfaConfiguration;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/TfaConfiguration;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    return-object v0
.end method

.method public getUsedRescueCode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;->usedRescueCode:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 176
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
