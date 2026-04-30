.class public Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;
.super Ljava/lang/Object;
.source "DeviceApprovalsChangeOverageActionDetails.java"


# instance fields
.field protected newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

.field protected previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    .line 94
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    .line 95
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;-><init>(Lcom/dropbox/core/v2/teampolicies/RolloutMethod;Lcom/dropbox/core/v2/teampolicies/RolloutMethod;)V

    return-object v0
.end method

.method public withNewValue(Lcom/dropbox/core/v2/teampolicies/RolloutMethod;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    .line 107
    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teampolicies/RolloutMethod;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teampolicies/RolloutMethod;

    .line 120
    return-object p0
.end method
