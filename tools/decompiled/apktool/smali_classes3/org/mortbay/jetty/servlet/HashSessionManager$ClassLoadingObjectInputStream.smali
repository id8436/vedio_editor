.class public Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "HashSessionManager.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    .line 621
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    .line 622
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/servlet/HashSessionManager;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/HashSessionManager$ClassLoadingObjectInputStream;->this$0:Lorg/mortbay/jetty/servlet/HashSessionManager;

    .line 615
    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 616
    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 630
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    .line 632
    :catch_0
    move-exception v0

    .line 634
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
