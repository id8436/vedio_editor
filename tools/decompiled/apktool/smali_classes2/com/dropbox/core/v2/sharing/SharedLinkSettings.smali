.class public Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
.super Ljava/lang/Object;
.source "SharedLinkSettings.java"


# instance fields
.field protected final expires:Ljava/util/Date;

.field protected final linkPassword:Ljava/lang/String;

.field protected final requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;-><init>(Lcom/dropbox/core/v2/sharing/RequestedVisibility;Ljava/lang/String;Ljava/util/Date;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/RequestedVisibility;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    .line 40
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    if-ne p1, p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 174
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .line 179
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/RequestedVisibility;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    .line 181
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getLinkPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedVisibility()Lcom/dropbox/core/v2/sharing/RequestedVisibility;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->requestedVisibility:Lcom/dropbox/core/v2/sharing/RequestedVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->linkPassword:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;->expires:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 165
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
