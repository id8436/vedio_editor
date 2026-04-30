.class Lorg/mortbay/jetty/deployer/ContextDeployer$1;
.super Ljava/lang/Object;
.source "ContextDeployer.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final this$0:Lorg/mortbay/jetty/deployer/ContextDeployer;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/deployer/ContextDeployer;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/mortbay/jetty/deployer/ContextDeployer$1;->this$0:Lorg/mortbay/jetty/deployer/ContextDeployer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 314
    :try_start_0
    const-string/jumbo v1, ".xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 318
    :catch_0
    move-exception v1

    .line 320
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
