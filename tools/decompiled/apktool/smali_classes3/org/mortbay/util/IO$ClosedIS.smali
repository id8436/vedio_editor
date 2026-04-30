.class Lorg/mortbay/util/IO$ClosedIS;
.super Ljava/io/InputStream;
.source "IO.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/util/IO$1;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Lorg/mortbay/util/IO$ClosedIS;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, -0x1

    return v0
.end method
