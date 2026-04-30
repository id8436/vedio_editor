.class public Lorg/mortbay/jetty/deployer/WebAppDeployer;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "WebAppDeployer.java"


# static fields
.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

.field static class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;


# instance fields
.field private _allowDuplicates:Z

.field private _configurationClasses:[Ljava/lang/String;

.field private _contexts:Lorg/mortbay/jetty/HandlerContainer;

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _deployed:Ljava/util/ArrayList;

.field private _extract:Z

.field private _parentLoaderPriority:Z

.field private _webAppDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 191
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->scan()V

    .line 141
    return-void
.end method

.method public doStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 259
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->stop()V

    move v0, v1

    .line 260
    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public getAllowDuplicates()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_allowDuplicates:Z

    return v0
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getContexts()Lorg/mortbay/jetty/HandlerContainer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    return-object v0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    return-object v0
.end method

.method public isExtract()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_extract:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_parentLoaderPriority:Z

    return v0
.end method

.method public scan()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No HandlerContainer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No such webapps resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Not directory webapps resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    invoke-virtual {v6}, Lorg/mortbay/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v7

    move v5, v3

    .line 162
    :goto_0
    if-eqz v7, :cond_12

    array-length v0, v7

    if-ge v5, v0, :cond_12

    .line 164
    aget-object v0, v7, v5

    .line 166
    const-string/jumbo v1, "CVS/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "CVS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    :cond_3
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v6, v0}, Lorg/mortbay/resource/Resource;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v8

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".war"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v6, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 181
    :cond_6
    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "root/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    :cond_7
    const-string/jumbo v0, "/"

    .line 185
    :goto_2
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 189
    :goto_3
    iget-boolean v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_allowDuplicates:Z

    if-nez v0, :cond_d

    .line 191
    iget-object v2, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    sget-object v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string/jumbo v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_4
    invoke-interface {v2, v0}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v9

    move v2, v3

    .line 192
    :goto_5
    array-length v0, v9

    if-ge v2, v0, :cond_d

    .line 194
    aget-object v0, v9, v2

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 196
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 201
    const/4 v4, 0x0

    .line 202
    :try_start_0
    instance-of v10, v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    if-eqz v10, :cond_c

    .line 203
    check-cast v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_6
    if-eqz v0, :cond_8

    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 192
    :cond_8
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 178
    :cond_9
    invoke-virtual {v8}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    .line 184
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 191
    :cond_b
    sget-object v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_4

    .line 204
    :cond_c
    :try_start_1
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 205
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_6

    .line 210
    :catch_0
    move-exception v0

    .line 212
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 219
    :cond_d
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    instance-of v0, v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    if-eqz v0, :cond_11

    sget-object v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string/jumbo v0, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    move-object v2, v0

    :goto_8
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 224
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getContextClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/webapp/WebAppContext;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    :goto_9
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 239
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setConfigurationClasses([Ljava/lang/String;)V

    .line 240
    :cond_e
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 241
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDefaultsDescriptor(Ljava/lang/String;)V

    .line 242
    :cond_f
    iget-boolean v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_extract:Z

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setExtractWAR(Z)V

    .line 243
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 244
    iget-boolean v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_parentLoaderPriority:Z

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setParentLoaderPriority(Z)V

    .line 246
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/HandlerContainer;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 247
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_deployed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    invoke-interface {v1}, Lorg/mortbay/jetty/HandlerContainer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->start()V

    goto/16 :goto_1

    .line 219
    :cond_10
    sget-object v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    move-object v2, v0

    goto :goto_8

    .line 226
    :catch_1
    move-exception v0

    .line 228
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 233
    :cond_11
    new-instance v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-direct {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>()V

    goto :goto_9

    .line 252
    :cond_12
    return-void

    :cond_13
    move-object v0, v4

    goto/16 :goto_6

    :cond_14
    move-object v1, v0

    goto/16 :goto_3
.end method

.method public setAllowDuplicates(Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_allowDuplicates:Z

    .line 129
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_configurationClasses:[Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setContexts(Lorg/mortbay/jetty/HandlerContainer;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_contexts:Lorg/mortbay/jetty/HandlerContainer;

    .line 75
    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_defaultsDescriptor:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setExtract(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_extract:Z

    .line 95
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_parentLoaderPriority:Z

    .line 105
    return-void
.end method

.method public setWebAppDir(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/WebAppDeployer;->_webAppDir:Ljava/lang/String;

    .line 115
    return-void
.end method
