.class public Lorg/mortbay/jetty/webapp/WebInfConfiguration;
.super Ljava/lang/Object;
.source "WebInfConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# instance fields
.field protected _context:Lorg/mortbay/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public configureClassLoader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Cannot configure webapp after it is started"

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "classes/"

    invoke-virtual {v1, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 73
    :cond_2
    const-string/jumbo v0, "lib/"

    invoke-virtual {v1, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppClassLoader;->addJars(Lorg/mortbay/resource/Resource;)V

    goto :goto_0
.end method

.method public configureDefaults()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public configureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method

.method public deconfigureWebApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebInfConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 36
    return-void
.end method
