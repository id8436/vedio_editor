.class public Lorg/mortbay/jetty/webapp/WebAppContext;
.super Lorg/mortbay/jetty/servlet/Context;
.source "WebAppContext.java"


# static fields
.field public static final ERROR_PAGE:Ljava/lang/String; = "org.mortbay.jetty.error_page"

.field public static final WEB_DEFAULTS_XML:Ljava/lang/String; = "org/mortbay/jetty/webapp/webdefault.xml"

.field private static __dftConfigurationClasses:[Ljava/lang/String;

.field static class$java$util$EventListener:Ljava/lang/Class;

.field static class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

.field static class$org$mortbay$jetty$handler$HandlerCollection:Ljava/lang/Class;


# instance fields
.field private _configurationClasses:[Ljava/lang/String;

.field private _configurations:[Lorg/mortbay/jetty/webapp/Configuration;

.field private _copyDir:Z

.field private _defaultsDescriptor:Ljava/lang/String;

.field private _descriptor:Ljava/lang/String;

.field private _distributable:Z

.field private _extraClasspath:Ljava/lang/String;

.field private _extractWAR:Z

.field private _isExistingTmpDir:Z

.field private _logUrlOnStart:Z

.field private _overrideDescriptor:Ljava/lang/String;

.field private transient _ownClassLoader:Z

.field private _parentLoaderPriority:Z

.field private _permissions:Ljava/security/PermissionCollection;

.field private transient _resourceAliases:Ljava/util/Map;

.field private _serverClasses:[Ljava/lang/String;

.field private _systemClasses:[Ljava/lang/String;

.field private _tmpDir:Ljava/io/File;

.field private transient _unavailable:Z

.field private _unavailableException:Ljava/lang/Throwable;

.field private _war:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "org.mortbay.jetty.webapp.WebInfConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "org.mortbay.jetty.webapp.WebXmlConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "org.mortbay.jetty.webapp.JettyWebXmlConfiguration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "org.mortbay.jetty.webapp.TagLibConfiguration"

    aput-object v2, v0, v1

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, v0, v0, v0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>(Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    invoke-direct {p0, v1, p2, v5}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "org/mortbay/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_overrideDescriptor:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_distributable:Z

    .line 94
    iput-boolean v4, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 95
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 96
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 97
    const-string/jumbo v0, "org.mortbay.jetty.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "java."

    aput-object v1, v0, v3

    const-string/jumbo v1, "javax."

    aput-object v1, v0, v4

    const-string/jumbo v1, "org.mortbay."

    aput-object v1, v0, v6

    const-string/jumbo v1, "org.xml."

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "org.w3c."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "org.apache.commons.logging."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "org.apache.log4j."

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_systemClasses:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "-org.mortbay.jetty.plus.annotation."

    aput-object v1, v0, v3

    const-string/jumbo v1, "-org.mortbay.jetty.plus.jaas."

    aput-object v1, v0, v4

    const-string/jumbo v1, "-org.mortbay.jetty.plus.naming."

    aput-object v1, v0, v6

    const-string/jumbo v1, "-org.mortbay.jetty.plus.jaas."

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "-org.mortbay.jetty.servlet.DefaultServlet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "org.mortbay.jetty."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "org.slf4j."

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_serverClasses:[Ljava/lang/String;

    .line 131
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 301
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 303
    new-instance v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 314
    invoke-direct {p0, p1, p3, v5}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "org/mortbay/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_overrideDescriptor:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_distributable:Z

    .line 94
    iput-boolean v4, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 95
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 96
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 97
    const-string/jumbo v0, "org.mortbay.jetty.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "java."

    aput-object v1, v0, v3

    const-string/jumbo v1, "javax."

    aput-object v1, v0, v4

    const-string/jumbo v1, "org.mortbay."

    aput-object v1, v0, v6

    const-string/jumbo v1, "org.xml."

    aput-object v1, v0, v5

    const-string/jumbo v1, "org.w3c."

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "org.apache.commons.logging."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "org.apache.log4j."

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_systemClasses:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "-org.mortbay.jetty.plus.annotation."

    aput-object v1, v0, v3

    const-string/jumbo v1, "-org.mortbay.jetty.plus.jaas."

    aput-object v1, v0, v4

    const-string/jumbo v1, "-org.mortbay.jetty.plus.naming."

    aput-object v1, v0, v6

    const-string/jumbo v1, "-org.mortbay.jetty.plus.jaas."

    aput-object v1, v0, v5

    const-string/jumbo v1, "-org.mortbay.jetty.servlet.DefaultServlet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "org.mortbay.jetty."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "org.slf4j."

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_serverClasses:[Ljava/lang/String;

    .line 131
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 315
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 316
    new-instance v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 324
    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    if-eqz p1, :cond_1

    move-object v3, p1

    :goto_1
    if-eqz p3, :cond_2

    move-object v4, p3

    :goto_2
    move-object v0, p0

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/mortbay/jetty/servlet/Context;-><init>(Lorg/mortbay/jetty/HandlerContainer;Lorg/mortbay/jetty/servlet/SessionHandler;Lorg/mortbay/jetty/security/SecurityHandler;Lorg/mortbay/jetty/servlet/ServletHandler;Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 88
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "org/mortbay/jetty/webapp/webdefault.xml"

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_overrideDescriptor:Ljava/lang/String;

    .line 93
    iput-boolean v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_distributable:Z

    .line 94
    iput-boolean v7, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 95
    iput-boolean v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 96
    iput-boolean v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 97
    const-string/jumbo v0, "org.mortbay.jetty.webapp.parentLoaderPriority"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "java."

    aput-object v1, v0, v6

    const-string/jumbo v1, "javax."

    aput-object v1, v0, v7

    const-string/jumbo v1, "org.mortbay."

    aput-object v1, v0, v8

    const-string/jumbo v1, "org.xml."

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string/jumbo v2, "org.w3c."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "org.apache.commons.logging."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "org.apache.log4j."

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_systemClasses:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "-org.mortbay.jetty.plus.annotation."

    aput-object v1, v0, v6

    const-string/jumbo v1, "-org.mortbay.jetty.plus.jaas."

    aput-object v1, v0, v7

    const-string/jumbo v1, "-org.mortbay.jetty.plus.naming."

    aput-object v1, v0, v8

    const-string/jumbo v1, "-org.mortbay.jetty.plus.jaas."

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string/jumbo v2, "-org.mortbay.jetty.servlet.DefaultServlet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "org.mortbay.jetty."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "org.slf4j."

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_serverClasses:[Ljava/lang/String;

    .line 131
    iput-boolean v6, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 330
    if-eqz p4, :cond_3

    :goto_3
    invoke-virtual {p0, p4}, Lorg/mortbay/jetty/webapp/WebAppContext;->setErrorHandler(Lorg/mortbay/jetty/handler/ErrorHandler;)V

    .line 331
    return-void

    .line 324
    :cond_0
    new-instance v2, Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-direct {v2}, Lorg/mortbay/jetty/servlet/SessionHandler;-><init>()V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-direct {v3}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    goto/16 :goto_1

    :cond_2
    new-instance v4, Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {v4}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    goto/16 :goto_2

    .line 330
    :cond_3
    new-instance p4, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-direct {p4}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;-><init>()V

    goto :goto_3
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v3, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 236
    return-void
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Deprecated configuration used for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 267
    new-instance v0, Lorg/mortbay/jetty/deployer/WebAppDeployer;

    invoke-direct {v0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;-><init>()V

    .line 268
    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setContexts(Lorg/mortbay/jetty/HandlerContainer;)V

    .line 269
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setWebAppDir(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p3}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setConfigurationClasses([Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p4}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setExtract(Z)V

    .line 272
    invoke-virtual {v0, p5}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->setParentLoaderPriority(Z)V

    .line 275
    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/deployer/WebAppDeployer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    throw v0

    .line 281
    :catch_1
    move-exception v0

    .line 283
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    sget-object v3, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 171
    return-void
.end method

.method public static addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.handler.ContextHandlerCollection"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    .line 202
    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$org$mortbay$jetty$handler$HandlerCollection:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.mortbay.jetty.handler.HandlerCollection"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$org$mortbay$jetty$handler$HandlerCollection:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Server;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/HandlerCollection;

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 205
    invoke-static/range {v0 .. v5}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 206
    return-void

    .line 201
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$org$mortbay$jetty$handler$ContextHandlerCollection:Ljava/lang/Class;

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$org$mortbay$jetty$handler$HandlerCollection:Ljava/lang/Class;

    goto :goto_1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 201
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

.method private getCanonicalNameForWebAppTmpDir()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2e

    const/16 v5, 0x5f

    const/4 v1, 0x0

    .line 1296
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1297
    const-string/jumbo v0, "Jetty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1300
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v3

    .line 1304
    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1305
    if-eqz v3, :cond_0

    aget-object v0, v3, v1

    if-nez v0, :cond_b

    :cond_0
    const-string/jumbo v0, ""

    .line 1306
    :goto_0
    if-nez v0, :cond_1

    .line 1307
    const-string/jumbo v0, "0.0.0.0"

    .line 1308
    :cond_1
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1311
    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1313
    if-eqz v3, :cond_2

    aget-object v0, v3, v1

    if-nez v0, :cond_c

    :cond_2
    move v0, v1

    .line 1316
    :goto_1
    if-gez v0, :cond_3

    .line 1317
    aget-object v0, v3, v1

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getPort()I

    move-result v0

    .line 1318
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1322
    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1325
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 1326
    if-nez v0, :cond_6

    .line 1328
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1329
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    .line 1332
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 1335
    :cond_6
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1336
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1337
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1338
    :cond_7
    const-string/jumbo v3, "!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1339
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1341
    :cond_8
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1343
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :goto_2
    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1352
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 1353
    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1354
    const/16 v3, 0x5c

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    const-string/jumbo v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v0

    .line 1360
    if-eqz v0, :cond_9

    aget-object v3, v0, v1

    if-nez v3, :cond_d

    :cond_9
    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1363
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x24

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 1364
    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1368
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 1370
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1371
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1372
    invoke-virtual {v2, v0, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 1368
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1305
    :cond_b
    aget-object v0, v3, v1

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getHost()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1313
    :cond_c
    aget-object v0, v3, v1

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v0

    goto/16 :goto_1

    .line 1345
    :catch_0
    move-exception v0

    .line 1347
    const-string/jumbo v3, "Can\'t generate resourceBase as part of webapp tmp dir name"

    invoke-static {v3, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1360
    :cond_d
    aget-object v0, v0, v1

    goto :goto_3

    .line 1375
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentWebAppContext()Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    .line 140
    instance-of v1, v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2

    .prologue
    .line 1116
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$java$util$EventListener:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "java.util.EventListener"

    invoke-static {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$java$util$EventListener:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/EventListener;

    check-cast v0, [Ljava/util/EventListener;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 1117
    return-void

    .line 1116
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->class$java$util$EventListener:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 462
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->loadConfigurations()V

    move v1, v0

    .line 464
    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 465
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lorg/mortbay/jetty/webapp/Configuration;->setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 469
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 471
    new-instance v1, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-direct {v1, p0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;-><init>(Lorg/mortbay/jetty/webapp/WebAppContext;)V

    .line 472
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 473
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    .line 476
    :cond_1
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 479
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Thread Context class loader is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 481
    :goto_1
    if-eqz v1, :cond_2

    .line 483
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Parent class loader is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_1

    .line 488
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 489
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/mortbay/jetty/webapp/Configuration;->configureClassLoader()V

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 491
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    .line 492
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_isExistingTmpDir:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isTempWorkDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 494
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    const-string/jumbo v2, ".active"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 496
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 499
    :cond_4
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->doStart()V

    .line 501
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isLogUrlOnStart()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 502
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->dumpUrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_5
    :goto_3
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 507
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Failed startup of context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    .line 509
    iput-boolean v4, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailable:Z

    goto :goto_3
.end method

.method protected doStop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 537
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->doStop()V

    .line 542
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 543
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/mortbay/jetty/webapp/Configuration;->deconfigureWebApp()V

    move v0, v1

    goto :goto_0

    .line 544
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    .line 547
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 550
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_securityHandler:Lorg/mortbay/jetty/security/SecurityHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 554
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_isExistingTmpDir:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isTempWorkDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-static {v0}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_2
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    if-eqz v0, :cond_3

    .line 563
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 565
    :cond_3
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailable:Z

    .line 566
    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    .line 568
    return-void

    .line 562
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_ownClassLoader:Z

    if-eqz v1, :cond_4

    .line 563
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 565
    :cond_4
    iput-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailable:Z

    .line 566
    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    throw v0
.end method

.method public dumpUrl()V
    .locals 5

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v2

    .line 520
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    .line 522
    aget-object v1, v2, v0

    invoke-interface {v1}, Lorg/mortbay/jetty/Connector;->getName()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 524
    if-nez v1, :cond_0

    .line 525
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "WebApp@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, " at http://"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method

.method public getConfigurationClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurations()[Lorg/mortbay/jetty/webapp/Configuration;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    return-object v0
.end method

.method public getDefaultsDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraClasspath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extraClasspath:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_overrideDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/security/PermissionCollection;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_permissions:Ljava/security/PermissionCollection;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 408
    .line 410
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    .line 411
    :goto_0
    if-eqz p1, :cond_2

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x64

    if-ge v2, v4, :cond_2

    .line 415
    :try_start_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/Context;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 416
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 432
    :goto_1
    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move v2, v3

    .line 426
    goto :goto_0

    .line 421
    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 423
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 424
    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    move-object v1, v2

    move v2, v3

    .line 426
    goto :goto_0

    .line 429
    :cond_2
    if-eqz v0, :cond_3

    instance-of v2, v0, Ljava/net/MalformedURLException;

    if-eqz v2, :cond_3

    .line 430
    check-cast v0, Ljava/net/MalformedURLException;

    throw v0

    :cond_3
    move-object v0, v1

    .line 432
    goto :goto_1
.end method

.method public getResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourceAliases()Ljava/util/Map;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    goto :goto_0
.end method

.method public getServerClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_serverClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getSystemClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_systemClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getTempDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 677
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 798
    :goto_0
    return-object v0

    .line 684
    :cond_0
    const-string/jumbo v0, "javax.servlet.context.tempdir"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_1

    instance-of v0, v1, Ljava/io/File;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 688
    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 689
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    goto :goto_0

    .line 693
    :cond_1
    if-eqz v1, :cond_3

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 697
    :try_start_0
    new-instance v0, Ljava/io/File;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 699
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Converted to File "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 702
    :cond_2
    const-string/jumbo v0, "javax.servlet.context.tempdir"

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 708
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "jetty.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "work"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_b

    .line 739
    :cond_4
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getCanonicalNameForWebAppTmpDir()Ljava/lang/String;

    move-result-object v1

    .line 741
    if-eqz v0, :cond_d

    .line 742
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 766
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 767
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 770
    :cond_6
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isTempWorkDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 771
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 772
    :cond_7
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Created temp dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 780
    :cond_8
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    if-nez v0, :cond_a

    .line 784
    :try_start_3
    const-string/jumbo v0, "JettyContext"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 785
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 786
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 787
    :cond_9
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 788
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 789
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Created temp dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 797
    :cond_a
    :goto_4
    const-string/jumbo v0, "javax.servlet.context.tempdir"

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 719
    :cond_b
    :try_start_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 721
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 722
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 724
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "work"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-nez v1, :cond_4

    :cond_c
    :goto_5
    move-object v0, v2

    goto/16 :goto_1

    .line 730
    :catch_1
    move-exception v0

    .line 732
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 745
    :cond_d
    :try_start_5
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 747
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 749
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Delete existing temp dir "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 750
    :cond_e
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-static {v0}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 752
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Failed to delete temp dir "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 755
    :cond_f
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 757
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-static {v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 759
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 760
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 761
    :cond_10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Can\'t reuse "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ", using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 774
    :catch_2
    move-exception v0

    .line 776
    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 777
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 791
    :catch_3
    move-exception v0

    .line 793
    const-string/jumbo v1, "tmpdir"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_4
.end method

.method public getUnavailableException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailableException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getWar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 825
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    return-object v0
.end method

.method public getWebInf()Lorg/mortbay/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->resolveWebApp()V

    .line 835
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    const-string/jumbo v1, "WEB-INF/"

    invoke-virtual {v0, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 837
    :cond_0
    const/4 v0, 0x0

    .line 839
    :cond_1
    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 443
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_unavailable:Z

    if-eqz v0, :cond_1

    .line 445
    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/mortbay/jetty/Request;

    .line 446
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 447
    const/16 v0, 0x1f7

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 451
    :goto_1
    return-void

    .line 445
    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p2

    goto :goto_0

    .line 450
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/servlet/Context;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto :goto_1
.end method

.method public isCopyWebDir()Z
    .locals 1

    .prologue
    .line 866
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_copyDir:Z

    return v0
.end method

.method public isDistributable()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_distributable:Z

    return v0
.end method

.method public isExtractWAR()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    return v0
.end method

.method public isLogUrlOnStart()Z
    .locals 1

    .prologue
    .line 1242
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    return v0
.end method

.method public isParentLoaderPriority()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    return v0
.end method

.method protected isProtectedTarget(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 897
    :goto_0
    const-string/jumbo v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->compactPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 900
    :cond_0
    const-string/jumbo v0, "/web-inf"

    invoke-static {p1, v0}, Lorg/mortbay/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/meta-inf"

    invoke-static {p1, v0}, Lorg/mortbay/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isTempWorkDirectory()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 808
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    if-nez v1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v0

    .line 810
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "work"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    const/4 v0, 0x1

    goto :goto_0

    .line 812
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 813
    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected loadConfigurations()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    if-eqz v0, :cond_1

    .line 892
    :cond_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 885
    sget-object v0, Lorg/mortbay/jetty/webapp/WebAppContext;->__dftConfigurationClasses:[Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 887
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lorg/mortbay/jetty/webapp/Configuration;

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    .line 888
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 890
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/webapp/Configuration;

    aput-object v0, v2, v1

    .line 888
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public removeResourceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected resolveWebApp()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 917
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 918
    if-nez v0, :cond_10

    .line 920
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 921
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 924
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 929
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " anti-aliased to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/net/URL;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 933
    :cond_2
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 934
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Try webapp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ", directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 937
    :cond_3
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 940
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "jar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 941
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 948
    :cond_4
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_copyDir:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_5
    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-boolean v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a

    .line 959
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "webapp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 961
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 964
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 989
    :cond_9
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 994
    :cond_a
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    .line 996
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Web application not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 997
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 972
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 973
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 974
    invoke-static {v0, v1, v6}, Lorg/mortbay/resource/JarResource;->extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V

    goto :goto_0

    .line 979
    :cond_d
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 981
    invoke-static {v1}, Lorg/mortbay/util/IO;->delete(Ljava/io/File;)Z

    .line 982
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 983
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 984
    invoke-static {v0, v1, v6}, Lorg/mortbay/resource/JarResource;->extract(Lorg/mortbay/resource/Resource;Ljava/io/File;Z)V

    goto/16 :goto_0

    .line 1000
    :cond_e
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1001
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "webapp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 1004
    :cond_f
    invoke-super {p0, v0}, Lorg/mortbay/jetty/servlet/Context;->setBaseResource(Lorg/mortbay/resource/Resource;)V

    .line 1006
    :cond_10
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/Context;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 401
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    .line 402
    check-cast p1, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->setName(Ljava/lang/String;)V

    .line 403
    :cond_0
    return-void
.end method

.method public setConfigurationClasses([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1016
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurationClasses:[Ljava/lang/String;

    .line 1019
    return-void

    .line 1018
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setConfigurations([Lorg/mortbay/jetty/webapp/Configuration;)V
    .locals 2

    .prologue
    .line 1027
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    .line 1030
    return-void

    .line 1029
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/webapp/Configuration;

    check-cast v0, [Lorg/mortbay/jetty/webapp/Configuration;

    goto :goto_0
.end method

.method public setCopyWebDir(Z)V
    .locals 0

    .prologue
    .line 1136
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_copyDir:Z

    .line 1137
    return-void
.end method

.method public setDefaultsDescriptor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1039
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_defaultsDescriptor:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1071
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_descriptor:Ljava/lang/String;

    .line 1074
    return-void
.end method

.method public setDistributable(Z)V
    .locals 0

    .prologue
    .line 1082
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_distributable:Z

    .line 1083
    return-void
.end method

.method public setEventListeners([Ljava/util/EventListener;)V
    .locals 3

    .prologue
    .line 1088
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/SessionHandler;->clearEventListeners()V

    .line 1091
    :cond_0
    invoke-super {p0, p1}, Lorg/mortbay/jetty/servlet/Context;->setEventListeners([Ljava/util/EventListener;)V

    .line 1093
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1095
    aget-object v1, p1, v0

    .line 1097
    instance-of v2, v1, Ljavax/servlet/http/HttpSessionActivationListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionBindingListener;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v2, :cond_2

    .line 1102
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    if-eqz v2, :cond_2

    .line 1103
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_sessionHandler:Lorg/mortbay/jetty/servlet/SessionHandler;

    invoke-virtual {v2, v1}, Lorg/mortbay/jetty/servlet/SessionHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 1093
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_3
    return-void
.end method

.method public setExtraClasspath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extraClasspath:Ljava/lang/String;

    .line 1237
    return-void
.end method

.method public setExtractWAR(Z)V
    .locals 0

    .prologue
    .line 1126
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_extractWAR:Z

    .line 1127
    return-void
.end method

.method public setLogUrlOnStart(Z)V
    .locals 0

    .prologue
    .line 1253
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_logUrlOnStart:Z

    .line 1254
    return-void
.end method

.method public setOverrideDescriptor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1051
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_overrideDescriptor:Ljava/lang/String;

    .line 1054
    return-void
.end method

.method public setParentLoaderPriority(Z)V
    .locals 0

    .prologue
    .line 1145
    iput-boolean p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_parentLoaderPriority:Z

    .line 1146
    return-void
.end method

.method public setPermissions(Ljava/security/PermissionCollection;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_permissions:Ljava/security/PermissionCollection;

    .line 1155
    return-void
.end method

.method public setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method public setResourceAliases(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_resourceAliases:Ljava/util/Map;

    .line 370
    return-void
.end method

.method public setServerClasses([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1163
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_serverClasses:[Ljava/lang/String;

    .line 1164
    return-void

    .line 1163
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setSystemClasses([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1172
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_systemClasses:[Ljava/lang/String;

    .line 1173
    return-void

    .line 1172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setTempDirectory(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 1183
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :cond_0
    if-eqz p1, :cond_1

    .line 1188
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 1192
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1194
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 1195
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 1200
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1201
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Bad temp directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :catch_0
    move-exception v0

    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1197
    :cond_4
    if-eqz p1, :cond_2

    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_isExistingTmpDir:Z

    goto :goto_1

    .line 1203
    :cond_5
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    .line 1204
    const-string/jumbo v0, "javax.servlet.context.tempdir"

    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_tmpDir:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1205
    return-void
.end method

.method public setWar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    .line 1214
    return-void
.end method

.method protected startContext()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1261
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1262
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/mortbay/jetty/webapp/Configuration;->configureDefaults()V

    .line 1261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_1

    .line 1268
    const-string/jumbo v2, "work"

    invoke-virtual {v0, v2}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 1269
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "javax.servlet.context.tempdir"

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1274
    const-string/jumbo v2, "javax.servlet.context.tempdir"

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1278
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 1279
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_configurations:[Lorg/mortbay/jetty/webapp/Configuration;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/mortbay/jetty/webapp/Configuration;->configureWebApp()V

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1282
    :cond_2
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Context;->startContext()V

    .line 1283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 907
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getResourceBase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebAppContext;->_war:Ljava/lang/String;

    goto :goto_0
.end method
