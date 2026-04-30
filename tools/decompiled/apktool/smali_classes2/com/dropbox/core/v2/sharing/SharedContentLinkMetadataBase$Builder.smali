.class public Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
.super Ljava/lang/Object;
.source "SharedContentLinkMetadataBase.java"


# instance fields
.field protected accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final audienceOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;"
        }
    .end annotation
.end field

.field protected audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

.field protected final currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

.field protected expiry:Ljava/util/Date;

.field protected final linkPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final passwordProtected:Z


# direct methods
.method protected constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            ">;",
            "Lcom/dropbox/core/v2/sharing/LinkAudience;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/LinkPermission;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'audienceOptions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 223
    if-nez v0, :cond_1

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'audienceOptions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceOptions:Ljava/util/List;

    .line 228
    if-nez p2, :cond_3

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'currentAudience\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    .line 232
    if-nez p3, :cond_4

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'linkPermissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkPermission;

    .line 236
    if-nez v0, :cond_5

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'linkPermissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->linkPermissions:Ljava/util/List;

    .line 241
    iput-boolean p4, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->passwordProtected:Z

    .line 242
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 243
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 244
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->expiry:Ljava/util/Date;

    .line 245
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;
    .locals 8

    .prologue
    .line 294
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceOptions:Ljava/util/List;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->currentAudience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->linkPermissions:Ljava/util/List;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->passwordProtected:Z

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->expiry:Ljava/util/Date;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/LinkAudience;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;Ljava/util/Date;)V

    return-object v0
.end method

.method public withAccessLevel(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 256
    return-object p0
.end method

.method public withAudienceRestrictingSharedFolder(Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->audienceRestrictingSharedFolder:Lcom/dropbox/core/v2/sharing/AudienceRestrictingSharedFolder;

    .line 270
    return-object p0
.end method

.method public withExpiry(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;
    .locals 1

    .prologue
    .line 283
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadataBase$Builder;->expiry:Ljava/util/Date;

    .line 284
    return-object p0
.end method
