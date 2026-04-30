.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;
.super Lorg/mortbay/servlet/GzipFilter$GzipStream;
.source "IncludableGzipFilter.java"


# instance fields
.field private final this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;->this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .line 80
    invoke-direct/range {v1 .. v7}, Lorg/mortbay/servlet/GzipFilter$GzipStream;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    .line 81
    return-void
.end method


# virtual methods
.method protected setContentEncodingGzip()Z
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    return v0
.end method
