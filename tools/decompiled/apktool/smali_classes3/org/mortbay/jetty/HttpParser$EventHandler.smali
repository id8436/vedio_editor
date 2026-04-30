.class public abstract Lorg/mortbay/jetty/HttpParser$EventHandler;
.super Ljava/lang/Object;
.source "HttpParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract content(Lorg/mortbay/io/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public headerComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    return-void
.end method

.method public messageComplete(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1059
    return-void
.end method

.method public parsedHeader(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    return-void
.end method

.method public abstract startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startResponse(Lorg/mortbay/io/Buffer;ILorg/mortbay/io/Buffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
