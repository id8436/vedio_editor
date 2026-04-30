.class Lorg/mortbay/jetty/Response$NullOutput;
.super Ljavax/servlet/ServletOutputStream;
.source "Response.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/Response$1;)V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Lorg/mortbay/jetty/Response$NullOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    return-void
.end method
