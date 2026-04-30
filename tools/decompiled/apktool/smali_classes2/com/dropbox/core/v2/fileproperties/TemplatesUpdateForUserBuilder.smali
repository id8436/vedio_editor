.class public Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;
.super Ljava/lang/Object;
.source "TemplatesUpdateForUserBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_client:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 39
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
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->build()Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_client:Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/fileproperties/DbxUserFilePropertiesRequests;->templatesUpdateForUser(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->withAddFields(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 81
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->withDescription(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 64
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/TemplatesUpdateForUserBuilder;->_builder:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;->withName(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    .line 51
    return-object p0
.end method
