.class public Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;
.super Ljava/lang/Object;
.source "DeviceApprovalsChangeUnlinkActionDetails.java"


# instance fields
.field protected newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 93
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 94
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;-><init>(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;)V

    return-object v0
.end method

.method public withNewValue(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 106
    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 119
    return-object p0
.end method
