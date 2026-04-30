.class public Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;
.super Ljava/lang/Object;
.source "SharedLinkSettings.java"


# instance fields
.field protected expires:Ljava/util/Date;

.field protected linkPassword:Ljava/lang/String;

.field protected requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 102
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->linkPassword:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->expires:Ljava/util/Date;

    .line 104
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->linkPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->expires:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;-><init>(Lcom/dropbox/core/v2/sharing/RequestedVisibility;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->expires:Ljava/util/Date;

    .line 144
    return-object p0
.end method

.method public withLinkPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->linkPassword:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public withRequestedVisibility(Lcom/dropbox/core/v2/sharing/RequestedVisibility;)Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 116
    return-object p0
.end method
