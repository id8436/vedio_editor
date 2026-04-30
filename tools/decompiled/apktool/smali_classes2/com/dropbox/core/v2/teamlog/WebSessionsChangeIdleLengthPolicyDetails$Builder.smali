.class public Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;
.super Ljava/lang/Object;
.source "WebSessionsChangeIdleLengthPolicyDetails.java"


# instance fields
.field protected newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 92
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 93
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)V

    return-object v0
.end method

.method public withNewValue(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 105
    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 118
    return-object p0
.end method
