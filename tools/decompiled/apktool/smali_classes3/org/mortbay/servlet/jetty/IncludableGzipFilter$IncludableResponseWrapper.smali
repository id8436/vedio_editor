.class public Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;
.super Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
.source "IncludableGzipFilter.java"


# instance fields
.field private final this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;


# direct methods
.method public constructor <init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;->this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;-><init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected newGzipStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)Lorg/mortbay/servlet/GzipFilter$GzipStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;

    iget-object v1, p0, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableResponseWrapper;->this$0:Lorg/mortbay/servlet/jetty/IncludableGzipFilter;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/mortbay/servlet/jetty/IncludableGzipFilter$IncludableGzipStream;-><init>(Lorg/mortbay/servlet/jetty/IncludableGzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;JII)V

    return-object v0
.end method
