.class public Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
.super Ljava/lang/Object;
.source "PropertiesTemplateUpdateBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 40
    if-nez p2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 44
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->build()Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->propertiesTemplateUpdate(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 86
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 69
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->withName(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 56
    return-object p0
.end method
