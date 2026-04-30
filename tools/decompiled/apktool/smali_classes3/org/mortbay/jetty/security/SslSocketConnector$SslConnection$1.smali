.class Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;
.super Ljava/lang/Object;
.source "SslSocketConnector.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# instance fields
.field handshook:Z

.field private final this$1:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

.field private final val$ssl:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    .prologue
    .line 692
    iput-object p1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->this$1:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    iput-object p2, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->handshook:Z

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 2

    .prologue
    .line 696
    iget-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->handshook:Z

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->this$1:Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;->access$000(Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection;)Lorg/mortbay/jetty/security/SslSocketConnector;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/jetty/security/SslSocketConnector;->access$100(Lorg/mortbay/jetty/security/SslSocketConnector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "SSL renegotiate denied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 701
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->val$ssl:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 705
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/SslSocketConnector$SslConnection$1;->handshook:Z

    goto :goto_0
.end method
