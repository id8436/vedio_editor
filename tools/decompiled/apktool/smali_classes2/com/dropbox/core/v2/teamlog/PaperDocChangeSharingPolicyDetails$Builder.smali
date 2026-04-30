.class public Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;
.super Ljava/lang/Object;
.source "PaperDocChangeSharingPolicyDetails.java"


# instance fields
.field protected final eventUuid:Ljava/lang/String;

.field protected publicSharingPolicy:Ljava/lang/String;

.field protected teamSharingPolicy:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'eventUuid\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->eventUuid:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->publicSharingPolicy:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->teamSharingPolicy:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->eventUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->publicSharingPolicy:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->teamSharingPolicy:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withPublicSharingPolicy(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->publicSharingPolicy:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public withTeamSharingPolicy(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Builder;->teamSharingPolicy:Ljava/lang/String;

    .line 149
    return-object p0
.end method
