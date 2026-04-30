.class public Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;
.super Ljava/lang/Object;
.source "TfaChangeStatusDetails.java"


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

.field protected previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

.field protected usedRescueCode:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 127
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 128
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->usedRescueCode:Ljava/lang/Boolean;

    .line 129
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->newValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->usedRescueCode:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;-><init>(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Lcom/dropbox/core/v2/teamlog/TfaConfiguration;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withPreviousValue(Lcom/dropbox/core/v2/teamlog/TfaConfiguration;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->previousValue:Lcom/dropbox/core/v2/teamlog/TfaConfiguration;

    .line 141
    return-object p0
.end method

.method public withUsedRescueCode(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Builder;->usedRescueCode:Ljava/lang/Boolean;

    .line 155
    return-object p0
.end method
