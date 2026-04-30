.class public Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;
.super Ljava/lang/Object;
.source "DbxTeamFilePropertiesRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 25
    return-void
.end method


# virtual methods
.method templatesAddForTeam(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_properties/templates/add_for_team"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/AddTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    const-string/jumbo v2, "2/file_properties/templates/add_for_team"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v1
.end method

.method public templatesAddForTeam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->templatesAddForTeam(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method templatesGetForTeam(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_properties/templates/get_for_team"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    const-string/jumbo v2, "2/file_properties/templates/get_for_team"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v1
.end method

.method public templatesGetForTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->templatesGetForTeam(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public templatesListForTeam()Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_properties/templates/list_for_team"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 129
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    .line 125
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    const-string/jumbo v2, "2/file_properties/templates/list_for_team"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v1
.end method

.method templatesUpdateForTeam(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_properties/templates/update_for_team"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    const-string/jumbo v2, "2/file_properties/templates/update_for_team"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v1
.end method

.method public templatesUpdateForTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;->templatesUpdateForTeam(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public templatesUpdateForTeamBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForTeamBuilder;
    .locals 2

    .prologue
    .line 202
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForTeamBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForTeamBuilder;-><init>(Lcom/dropbox/core/v2/fileproperties/DbxTeamFilePropertiesRequests;Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;)V

    return-object v1
.end method
