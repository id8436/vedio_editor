.class public Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
.super Ljava/lang/Object;
.source "SharingPolicy.java"


# instance fields
.field protected publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

.field protected teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 89
    iput-object v0, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 90
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/SharingPolicy;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPolicy;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/SharingPolicy;-><init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V

    return-object v0
.end method

.method public withPublicSharingPolicy(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;)Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .line 102
    return-object p0
.end method

.method public withTeamSharingPolicy(Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/SharingPolicy$Builder;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .line 115
    return-object p0
.end method
