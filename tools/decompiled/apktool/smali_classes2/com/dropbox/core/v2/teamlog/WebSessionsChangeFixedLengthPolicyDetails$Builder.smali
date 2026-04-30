.class public Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;
.super Ljava/lang/Object;
.source "WebSessionsChangeFixedLengthPolicyDetails.java"


# instance fields
.field protected newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .line 90
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .line 91
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;)V

    return-object v0
.end method

.method public withNewValue(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .line 103
    return-object p0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/WebSessionsFixedLengthPolicy;

    .line 116
    return-object p0
.end method
